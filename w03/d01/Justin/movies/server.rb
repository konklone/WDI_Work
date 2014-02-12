require 'httparty'
require	'json'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'


						
# * GET "/" => "Welcome to Movies.io", this page links to "/movies/search"
get "/" do
	erb :index
end

# * GET "/movies/search" => Displays a form for new movies. Input for a movie title.
get "/movies/search" do
	
	erb :search
end

# * POST "/movies" => Fetches movie data from OMDB and saves the title, year, and poster src as a CSV to movies.txt(and assign it a unique id) AND redirect the user to `movie/id`
post "/movies" do
	search_title = params[:title]

	name = search_title
	name = name.gsub(" ", "+")

	url = "http://www.omdbapi.com/?t=#{name}"
	response = HTTParty.get(url)
	parsed = JSON(response)

	year_released = parsed["Year"]
	movie_title = parsed["Title"]
	poster_link = parsed["Poster"]

	count = %x{wc -l movies.txt}.split[0].to_i
	@new_movie = {}
	# @movie << count + 1
	@new_movie[:title] = movie_title
	@new_movie[:year] = year_released
	@new_movie[:poster_url] = poster_link
	# file = File.new("movies.txt","a+")
	# file.puts @movie.join(",")
	# file.close

	query_str = "INSERT INTO movies "
	query_str += "(title, year, poster_url) VALUES "
	query_str += "('#{@new_movie[:title]}', #{@new_movie[:year]}, '#{@new_movie[:poster_url]}')"

	db_conn = PG.connect( dbname: "movies_db")
		db_conn.exec(query_str)
	db_conn.close
	erb :result
end

# * GET "/movies" => Print out information for all the movies. For each one, display the title, year and poster img.
#   * Using a erb "partial" here for a single movie may help you here to keep your code DRY. You'll be able to render that same erb template for EACH movie that you have to display.
get "/movies" do
	# @movies_hash = {}
	@movies_array = []
	@id = params[:num].to_i
	# file = File.new("movies.txt","a+")
	# file.each do |line|
	# 	movie = line.split ","
	# 	@movies_hash[movie[0].to_i] = movie
	# end
	# file.close
	db_conn = PG.connect( dbname: "movies_db")
		
		@movies_array = db_conn.exec( "SELECT * FROM movies;" )
		# binding.pry
	db_conn.close
	# binding.pry
	erb :all_movies
end

# * GET "/movies/:id" => Show a particular movie. Again, display the title, year and poster img.
get "/movies/:num" do
	# @movies_hash = {}
	@movies_array = []
	@id = params[:num].to_i
	@id -= 1
	# file = File.new("movies.txt","a+")
	# file.each do |line|
	# 	movie = line.split ","
	# 	@movies_hash[movie[0].to_i] = movie
	# end
	# file.close
	db_conn = PG.connect( dbname: "movies_db")
		@movies_array = db_conn.exec( "SELECT * FROM movies;" )

	db_conn.close
	
	erb :result2
end


#####
###Movies.io

#   * You'll need to make an http request to get the movie info
#   * You'll need to count the number of lines in the file to figure out what id to assign the entry
#   * You'll need to add your entry as a CSV to movies.txt
#   * You should redirect to `movie/id` after your information has been posted

# Your CSV should look something like this:

# ```
# 1,Up,2009,http://ia.media-imdb.com/images/M/MV5BMTMwODg0NDY1Nl5BMl5BanBnXkFtZTcwMjkwNTgyMg@@._V1_SX300.jpg
# 2,Finding Nemo,2003,http://ia.media-imdb.com/images/M/MV5BMTY1MTg1NDAxOV5BMl5BanBnXkFtZTcwMjg1MDI5Nw@@._V1_SX300.jpg
# 3,Toy Story 3,2010,http://ia.media-imdb.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_SX300.jpg
# ```