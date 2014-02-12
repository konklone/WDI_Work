# require the sinatra framework
require 'sinatra'
# require the relaoder so you don;t have to keep restarting the server
require 'sinatra/reloader'
# pry will help work through coding issues
require 'pry'
# You don't have to require erb.  Just being thorough for now
require 'erb'
# using httparty to send search strings
require 'httparty'
# not sure why we need this yet
require 'json'


# Build the routes
# This is the home or index page
get "/"  do
  erb :index
end

# This page will have a form set up to accept user imput
get "/movies/search" do

  erb :movies_search
end

# set up the route to sent or post the movies to the text file
post "/movies" do

  # The name will come from used input via a form
  title = params[:movie_title].gsub(" ", "+")

  # build the query string to the api
  url = "http://www.omdbapi.com/?t=#{title}"

  response = HTTParty.get(url)
  parsed = JSON(response)



  # Create a unique id for each movie by counting all the lines in the csv file
  # set the lines equal to zero
  lines_in_file = 0

  # Open the file in read write format
  file = File.new("movies.txt", "a+")

  # iterate through the file to count the current lines.  The lines are made up of the movies that have been searched for.
  # this will count each line then increment lines_in_file by 1
  file.each do |line|
    lines_in_file+= 1
  end

  # set the unique id to the result of the preceeding loop + 1
  id = lines_in_file + 1

  # Get the values from the parsed json response into a csv format
  response = "#{id},#{parsed["Title"]},#{parsed["Poster"]},#{parsed["Year"]}"

  # put this string into the movies.txt file
  file.puts response

  #close the file
  file.close

  # Redirect to the page for the movie that was just searched for
  redirect to("/movies/#{id}")

end

get "/movies" do
@movie_info = []
# Open the movies.txt file
  file = File.new("movies.txt", "a+")
  file.each do |line|
  @movie_info << line
  end
    file.close
    erb :all_movies
end

# Show a single movie either the one just searched for or picked from the all movies page
# use the unique to bring back the movie details
get "/movies/:id" do

# Open the movies.txt file
file = File.new("movies.txt", "a+")

# Create an array to hold the title year and poster of the movies
# Start with the empty array
#movie_info = []

  file.each do |line|
    if line.split(",")[0] == params[:id]
      @movie_info = line.split(",")
    end
  end
  file.close
  erb :movie
end




##### Drafts ######


# # Write the info to the csv file
# # Create a new instance of the file
# file = File.new("movies.txt", "a+")
# # take the info our of the movie_info array and turn it into a CSV format
# file.puts movie_info.join(",")
# #close the file
# file.close



# This was Jeff showing us what was being returned from the JSON response
# parsed["Title"]
# parsed["Poster"]
# parsed["Year"]






