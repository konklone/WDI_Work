require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'

get '/' do
  erb :welcome
end

get '/movies/search' do
  erb :form
end

post '/movies/search' do


	name = params[:title].gsub(" ", "+")

	url = "http://www.omdbapi.com/?t=#{name}"

	response = HTTParty.get(url)

	parsed = JSON(response)

    # Count the number of lines in the file to figure out what id we should assign
    lines_in_file = 0
    file = File.new("movies.txt", "a+")
    file.each do |line|
      lines_in_file += 1
    end
    file.close
    id = lines_in_file + 1

    # Create an array to hold the info we want to save
    info = []
    info << id
    info << parsed["Title"]
    info << parsed["Year"]
    info << parsed["Poster"]

    # Write the info to the csv
    file = File.new("movies.txt", "a+")
    file.puts info.join(",")
    file.close

  # Redirect to the page that shows the movie that was just added
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
  @movie_array = []
  file = File.new("movies.txt", "a+")
  file.each do |line|
    if line.split(",")[0] == params[:id]
      @movie_array = line.split(",")
    end
  end
  file.close
  erb :movie
end

