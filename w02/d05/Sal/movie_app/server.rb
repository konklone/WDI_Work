require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'
require 'pg'

FILENAME = "movies"


get ("/") do 
	erb :index
end

get ("/movies/search") do
	erb :form
end

post ("/movies") do 
	name = params[:title].gsub(" ", "+")
	url = "http://www.omdbapi.com/?t=#{name}"
	response = HTTParty.get(url)
	parsed = JSON(response)

	# lines_in_file = 0
 #    file = File.new("movies.txt", "a+")
 #    file.each do |line|
 #      lines_in_file += 1
 #    end
 #    file.close
 #    id = lines_in_file + 1

	# movie_info = []
	# movie_info << id 
	# movie_info << parsed["Title"]
	# movie_info << parsed["Year"]
	# movie_info << parsed["Poster"]

  db_conn = PG.connect( dbname: FILENAME + "_db" )

  query = "INSERT INTO movies "
  query += "(title, year, poster) VALUES"
  query += "('#{parsed["Title"]}', '#{parsed["Year"]}','#{parsed["Poster"]}');"

  db_conn.exec( query )

  db_conn.close


 # file = File.new("movies.txt", "a+")
 #    file.puts movie_info.join(",")
 #    file.close

    redirect to ("/movies")
end

get ("/movies") do 
  db_conn = PG.connect( dbname: FILENAME + "_db" )
  results = db_conn.exec( "SELECT * FROM movies" )
  @all_movies = []
  results.each do |movie|
    @all_movies << movie.values.join(",")
  end

	# file = File.new("movies.txt", "a+")
#   file.each do |line|
#   @all_movies << line
# end
# 	file.close
  db_conn.close

  erb :all_movies
end

get ("/movies/:id") do 
  db_conn = PG.connect( dbname: FILENAME + "_db" )
  results = db_conn.exec( "SELECT * FROM movies" )

  @all_movies = []
  results.each do |movie|
    @all_movies << movie.values.join(",")
  end

  @all_movies.each do |movie|
    if movie.split(",")[0] == params[:id]
     @movie_info = movie.split(",")
    end
  end
  # file = File.new("movies.txt", "a+")
   # file.each do |line|
   #   if line.split(",")[0] == params[:id]
   #     @movie_info = line.split(",")
   #   end
  # end
  # file.close
  erb :movie
end


