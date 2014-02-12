require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'



# GET "/" => "Welcome to Movies.io", this page links to "/movies/search"

get "/" do
  erb :index
end

# GET "/movies/search" => Displays a form for new movies. Input for a movie title.

get "/movies/search" do
  erb :search_form
end

post "/movies" do
  name = params[:title].gsub( " ", "+")

  #grabs :title and passes it in to a string query that fetches a string from the API
  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)

#turns info string into a searchable hash, then stores in variables
  parsed = JSON(response)
  @year = parsed["Year"]
  @poster = parsed["Poster"]
  @title = parsed["Title"]
  
#start line counter at 0 and then add to it for each line of the text doc
#stores in id
  lines_in_file = 0

  file = File.new("movies.txt", "a+")

  file.each do |line|
    lines_in_file += 1
  end
  id = lines_in_file + 1

  # Create an array to hold the info we want to save
  info = []
  info << id
  info << @year
  info << @poster
  info << @title

  # Write the info to the csv

  file.puts info.join(",")
  file.close
  redirect "/movies/#{id}"

end

# GET "/movies" => Print out information for all the movies. 
#For each one, display the title, year and poster img.
get "/movies" do

#Iterates over each line of the text file and adds it to an array
   @all_movies = []
   file = File.new("movies.txt", "a+")

   file.each do |line|
   @all_movies << line
   end

   file.close
   erb :all_movies

end


# GET "/movies/:id" => Show a particular movie. Again, display the title, year and poster img.


get "/movies/:id" do
  file = File.new("movies.txt", "a+")


   file.each do |line|
     if line.split(",")[0] == params[:id]
       @movie_array = line.split(",")
     end

   end
   file.close
   erb :movies
end

#1,Up,2009,http://ia.media-imdb.com/images/M/MV5BMTMwODg0NDY1Nl5BMl5BanBnXkFtZTcwMjkwNTgyMg@@._V1_SX300.jpg
