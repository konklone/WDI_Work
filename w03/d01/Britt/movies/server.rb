require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'
require 'json'
require 'pry'

##############################################
#############      Movies      ###############
##############################################

FILENAME = "movies"

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

	# Creates movie_info, a blank hash used to store API data
	@movie_info = {}
	@movie_info[:title] = parsed["Title"]
	@movie_info[:year] = parsed["Year"]
	@movie_info[:poster_link] = parsed["Poster"]

	# opens the database connection stream
	db_conn = PG.connect( dbname: FILENAME + "_db" )

	# creates a query string to format the attribute values
	query_str = "INSERT INTO movies "
	query_str += "(title, year, poster_link) VALUES "
	query_str += "('#{@movie_info[:title]}', #{@movie_info[:year]}, '#{@movie_info[:poster_link]}');"

	# adds the attribute values to the movies database table
	db_conn.exec( query_str )
	
	# sets the array of attribute hashes to results
	results = db_conn.exec( "SELECT * FROM movies;" )

	# Enumerates through the database entries. For each line:
	# 	* checks the title against the recently added movie title
	# 	* when it finds a match, sets the id to an instance variable
	results.each do |hash|
		if hash['title'] == @movie_info[:title]
			@id = hash['id']
		end
	end

	# selects the movie just added, and sets the id to an instance var
	# results.last { |hash| @id = hash['id'] }[0] # will this work?

	# closes the database connection stream
	db_conn.close
	# Redirects the user to the appropriate page
	redirect "/movies/#{@id}"
end

get "/movies" do
	# opens the database connection stream
	db_conn = PG.connect( dbname: FILENAME + "_db" )

	# sets the array of attribute hashes to an instance var
	@all_movies = db_conn.exec( "SELECT * FROM #{FILENAME};" )

	# closes the database connection stream
	db_conn.close

	erb :movie_reader
end

get "/movies/:id" do
	@id = params[:id]
	# opens the database connection stream
	db_conn = PG.connect( dbname: FILENAME + "_db" )

	# sets the movie hash matching the user-chosen id to
	# the instance variable @movie_hash
	@movie_hash = db_conn.exec( "SELECT * FROM #{FILENAME}
			WHERE id = #{@id}" )[0]

	# closes the database connection stream
	db_conn.close

	# loads the id_movie_reader view
	erb :id_movie_reader
end