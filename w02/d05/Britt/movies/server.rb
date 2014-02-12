require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'

##############################################
#############      Movies      ###############
##############################################

# root route that loads index
get "/" do
	erb :index
end

# route to form for user input to find a movie
get "/movies/search" do
	erb :form
end

# with user input from form.erb:
# 	* stores to instance variable title
# 	* passes title to movie_writer.erb for querying OMDB API
post "/movies" do
	title = params[:title]

	# replaces each " " character in the user-provided
	# title	with a "+" so the query string can be properly
	# parsed by the API 
	title = title.gsub(" ", "+")

	# takes user-given title & queries OMDB API for:
	# 	* title, year, & poster of movie user gave
 	url = "http://omdbapi.com/?t=#{title}"

	# * Queries OMDB API with HTTParty
	# * Parses the JSON response
	response = HTTParty.get(url)
	parsed = JSON(response)

	# Creates movie_info, a blank array used to store API data
	movie_info = []
	movie_info << parsed["Title"]
	movie_info << parsed["Year"]
	movie_info << parsed["Poster"]

	# Instantiates new read-only File object in order to
	# determine the next unique ID
	file = File.new("movies.txt", "r")

	# Iterates through each line of movies.txt: 
	# 	* For each line, increases the iterator, functioning
	# 		as a running count of lines in movies.txt
	i = 0
	file.each do |line|
		i += 1
		i
	end

	# closes the instance of the File object
	file.close

	# Adds the ID calculated from movies.txt to the 
	# front of the movie_info array; 
	# * ID = total number of lines in txt + 1
	# * joins the items into a string, and sets it to a var
	id = i + 1
	movie_info.unshift(id)
	movie_string = movie_info.join(",")

	# Instantiates new write-only File object that begins
	# writing to the end of the file 
	file = File.new("movies.txt", "a")
	# Writes the movie string to movies.txt 
	# & closes the instance of the File object
	file.puts movie_string
	file.close
	# Redirects the user to the appropriate page
	redirect "/movies/#{id}"
end

get "/movies" do
	# Instantiates new read-only File object
	file = File.new("movies.txt", "r")

	# Enumerates through movies.txt. For each line:
	# 	* adds the string as a value in the array @all_movies
	@all_movies = []
	file.each do |line|
		@all_movies << line
	end

	# closes the instance of the File object
	file.close

	erb :movie_reader
end

get "/movies/:id" do
	@id = params[:id]
	# Instantiates new read-only File object
	file = File.new("movies.txt", "r")
	# Enumerates through movies.txt. For each line:
	# * checks to see if the id matches the user-selected id
	# * when it finds a match, it is added to an array
	# * after checking the document, it returns the array
	movie_string_array = file.select {|line| line.split(",")[0] == @id}

	# closes the instance of the File object
	file.close

	# creates an array separating each value of stored
	# data from the OMDB API into its own index
	@movie_info = movie_string_array[0].split(",")

	erb :id_movie_reader
end