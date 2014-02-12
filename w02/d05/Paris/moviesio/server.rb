require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'


get "/" do   
 @greeting = "Welcome to Movies.io"
 @search = "/movies/search"
  erb :index
end

get "/movies/search" do
  erb :forms
end

get "/movies" do
  @all_movies = []
  file = File.new("movies.txt", "a+")
  file.each do |line|
    @all_movies << line
  end
  file.close
  erb :allmovies
end

get "/movies/:id" do   
  file = File.new("movies.txt", "a+")
  file.each do |line|
    if line.split(",")[0] == params[:id] 
    @movies_array = line.split(",")
    end
  end
  file.close 
  erb :singlemovie
end

post "/movies" do
##### HTTP PARTY!!!!!#####
name = params[:title].gsub(" ", "+")
url = "http://www.omdbapi.com/?t=#{name}"
response = HTTParty.get(url)
parsed_movie_info = JSON(response)
# parsed_movie_info is a hash

# Count the number of lines in the file to figure out what id we should assign
  lines_in_file = 0
  file = File.new("movies.txt", "a+")
  file.each do |line|
    lines_in_file += 1
  end
  file.close
  id = lines_in_file + 1

  # Create an array to hold the info we want to save
  movies_array = []
  movies_array << id
  movies_array << parsed_movie_info["Year"]
  movies_array << parsed_movie_info["Poster"]
  movies_array << parsed_movie_info["Title"]

 # Write the info to the csv
 file = File.new("movies.txt", "a+")
  file.puts movies_array.join(", ")
  file.close

  #redirect to the page that shows the single movie
  redirect to("/movies/#{id}")
end







