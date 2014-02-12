require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'

get '/' do
  erb :welcome
end

get '/movies/search' do

  erb :search
end

post '/movies' do
  # Here will be the code to OMDB
  # get it and store it into a file
  # params[:title] dont need it because it is seen below
  name = params[:title].gsub(" ", "+") # To get it ready to be sent as per requirements of the API which needs a +.
  response = HTTParty.get("http://www.omdbapi.com/?t=#{name}") #starts as a string 
  movie_hash = JSON(response) # Its now a hash

  # Now we save the move_hash to a file
  # then change the string file to a hash.
  # a+ Create new instance of a file w/ read write properties.
  file = File.new("movies.txt", "a+")
  # Iterate to get count over each line of the file.
  iterator = 0
  file.each do |line|
    iterator += 1
  end
  # => "id,title,year,poster"
file.puts "#{iterator +1},#{movie_hash["Title"]},#{movie_hash["Year"]},#{movie_hash["Poster"]}" 
  # add one so we can start at 1 instead of 0
  # binding.pry Did it take the movie_hash?YES!
  # Did it write to movie.txt?YES!
  file.close  
 
  redirect 'movies' #'movies/#{id}'
end

get '/movies' do

@all_movies = []
  file = File.new("movies.txt", "a+")
  file.each do |line|
    @all_movies << line
  end
  file.close
  erb :all_movies
end

get "/movies/:id" do

  file = File.new("movies.txt", "a+")
  file.each do |line|
    line.split(",")
    if line.split(",")[0] == params[:id]
      @receipt_array = line.split(",")
    end
  file.close
  erb :movies
  end
end
# Show the user all the previously searched for movies
#get '/movies/' do
  # layout and yield to an erb file, Lastly interpolate
#erb :
  # => Title: title
  # => Year: 
#end







############ SCRATCH ##########################
  #show the ALL data you have in the file
  # Here will be the code to OMDB
  #@movie = params[:movie]
  #just one partivcular movie
  #need to figure out how to show the poster



# name = "the room"

# name = params[:title].gsub(" ", "+")


# url = "http://www.ombapi.com/?t=#{name}"

# response = HTTParty.get(url)

# parsed = JSON(response)
# binding.pry
