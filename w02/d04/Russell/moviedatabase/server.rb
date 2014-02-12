require 'httparty'
require 'json'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get "/" do
	erb :movies_home
end

 
get "/movies/search" do
	erb :movies_search
end


post "/movies" do 

name = params[:title].gsub(" ", "+")
response = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
parsed = JSON(response)
@year = parsed["Year"]
@poster = parsed["Poster"]
@title = parsed["Title"]


##counting lines and figures out ID#
lines_in_file = 0
    file = File.new("movies.txt", "a+")
    file.each do |line|
      lines_in_file += 1
  	end
    file.close
    id = lines_in_file + 1
	

	@movie_array = [id, @title, @year, @poster].join(",")
	#writes the string  to the new file 
   	file = File.new("movies.txt", "a+")
    file.puts @movie_array
    file.close 
  	redirect to("/movies/#{id}")
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
    if line.split(",")[0] == params[:id]
      @movie_array = line.split(",")
    end
  end
  file.close
  erb :movies 
end




