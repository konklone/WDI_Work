require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'



get "/" do
  erb :index
end

get "/movies" do
  file = File.new("movies.txt", "r") 
  @all_movies = Hash.new
  iterator = 0
  file.each do |line|
    @all_movies[iterator] = line.split(",")
    iterator += 1
  end
  file.close

  erb :movies
end

get "/movies/search" do
  erb :search
end

get "/movies/:id" do 
  id = params[:id].to_i
  file = File.new("movies.txt", "a+")
  file.each do |line|
    movie = line.split(",")
    if id == movie[0].to_i
      @movie_by_id = movie
    end
  end
  file.close

  erb :movies
end

post "/movies" do 
  name = params[:title]
  name = name.gsub(" ", "+")
  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)
  parsed = JSON(response)
  lines_in_file = 0
  file = File.new("movies.txt", "r")
  file.each do |line|
    lines_in_file += 1
  end
  file.close
  id = lines_in_file + 1
  movie = Array.new
  movie << id
  movie << parsed["Title"]
  movie << parsed["Year"]
  movie << parsed["Poster"]
  file = File.new("movies.txt", "a")
  file.puts movie.join(",")
  file.close

  redirect "/movies/#{id}"
end