require 'httparty'
require 'json'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

# GET "/" => "Welcome to Movies.io", this page links to "/movies/search"
get '/' do
  erb :index
end

# GET "/movies/search" => Displays a form for new movies. Input for a movie title.
get '/movies/search' do 
  erb :form
end

# POST "/movies" => Fetches movie data from OMDB and saves the title, year, and poster src as a CSV to movies.txt(and assign it a unique id) AND redirect the user to movie/id
post '/movies' do

  # You'll need to make an http request to get the movie info
  title = params[:movie_title].gsub(" ", "+")
  response = HTTParty.get("http://www.omdbapi.com/?t=#{title}")
  parsed = JSON(response)
  title = parsed["Title"] 
  year = parsed["Year"]
  poster_url = parsed["Poster"]

  # You'll need to count the number of lines in the file to figure out what id to assign the entry
  i = 0 
  file = File.new("movies.txt", "a+")
  file.each do |line|
  i += 1  
  end
  file.close
  id = i + 1 

  a = []
  a << id 
  a << title
  a << year
  a << poster_url 

  # You'll need to add your entry as a CSV to movies.txt
  file = File.new("movies.txt", "a+")
  file.puts a.join(",")
  file.close

  # You should redirect to movie/id after your information has been posted
  redirect to '/movies/#{id}'
  end
  
get '/movies' do
  erb :allmovies
  end


get '/movies/:id' do
  file = File.new("movies.txt", "r")
  file.each do |line|
  if line.split(",")[0] == params[:id]
  @movies_array = line.split(",")
  end
end
  file.close
  erb :movies
end 

# post '/movies' do
#   @id = params[:id].to_i
#   @movies_array = []
#   file = File.new("movies.txt", "a+")
#   file.each do |line|
#   if line.split(",") == params[:id]
#   @info = line.split(",")
#   end
# end
#   erb :movies
# end 
