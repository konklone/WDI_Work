require "sinatra"
require "sinatra/reloader"
require "json"
require "httparty"

# name = "no country for old men"
 



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
    lines_in_file = 0
    file = File.new("movies.txt", "a+")
    file.each do |line|
      lines_in_file += 1
    end
    file.close
    id = lines_in_file + 1
    big_array = []
    big_array << id
    big_array << year
    big_array << poster
   	big_array << movie_name
    file = File.new("movies.txt", "a+")
    file.puts big_array.join(",")
    file.close
  redirect to("/movies/#{id}")
end

get ("/movies") do
	@movie_list = []
	file = File.new("movies.txt", "a+")
	file.each do |line|
		@movie_list << line
	end
	file.close
	erb :movie_list
end

get ("/movies/:id") do
	params[:id] = 

	end

