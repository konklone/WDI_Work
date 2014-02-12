require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'

get("/") do
  erb :index
end

get("/movies/search") do
  erb :search
end

get("/movies/find") do
  erb :id_search
end

get("/movies/results") do
  @id = params[:id]
  @info = []
  file = File.new("movies.txt", "a+")
  file.each do |line|
    values = line.split(",")
    if values[0] == @id
      @info += values
    end
  end
  erb :results
end

post("/movies") do
  id = 0
  info = []
  title = params[:movie].gsub(" ", "+")
  url = "http://www.omdbapi.com/?t=#{title}"
  parsed = JSON(HTTParty.get(url))
  file = File.new("movies.txt", "a+")
  file.each do |line|
    id += 1
  end
  info.push(id, parsed["Title"], parsed["Year"], parsed["Poster"], parsed["Rated"], parsed["imdbRating"])
  file.puts info.join(",")
  file.close
  redirect "/movies"
end

get("/movies") do
    erb :movies 
end






