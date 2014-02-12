require "sinatra"
require "sinatra/reloader"
require "json"
require "httparty"
require "PG"

 
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
	year = parsed["Year"]
	poster = parsed["Poster"]
	movie_name = parsed["Title"]
  db_connect = PG.connect( dbname: movies_rb )
  query = "INSERT INTO flicks ""(title, year, image) VALUES "("'#{new_movie[:title]}', '#{new_movie[:year]}', '#{new_movie[:image]}'");""
  db_connect.exec( query )
  db_connect.close
  # lines_in_file = 0
  #   file = File.new("movies.txt", "a+")
  #   file.each do |line|
  #     lines_in_file += 1
  #         file.close
  #   id = lines_in_file + 1
  #   big_array = []
  #   big_array << id
  #   big_array << year
  #   big_array << poster
  #  	big_array << movie_name
  #   file = File.new("movies.txt", "a+")
  #   file.puts big_array.join(",")
  #   file.close

  redirect to("/movies/#{id}")
end

get ("/movies") do
  db_connect = PG.connect( dbname: movies_rb )
  result = db_connect.exec( "SELECT * FROM flicks")
  result.each do |row|
  @movie_list = "#{row['id']} #{row['title']} #{row['year']} #{row['image']}"
	# @movie_list = []
	# file = File.new("movies.txt", "a+")
	# file.each do |line|
	# 	@movie_list << line
	# end
	# file.close
	erb :movie_list
end

get ("/movies/:id") do
end

