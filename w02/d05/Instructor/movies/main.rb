require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

get '/' do
  erb :welcome
end

get '/movies/search' do
  erb :form
end

post '/movies' do
  if params[:title]
    name = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{name}"
    html = HTTParty.get(url)
    hash = JSON(html)

    lines_in_file = 0
    file = File.new("movies.txt", "r")
    file.each do |line|
      lines_in_file += 1
    end
    file.close
    id = lines_in_file + 1

    info = []
    info << id
    info << hash['Title']
    info << hash['Year']
    info << hash['Poster']

    file = File.new("movies.txt", "a+")
    file.puts info.join(",")
    file.close

  end

  redirect to("/movies/#{id}")
end

get '/movies' do
  @all_movies = []
  file = File.new("movies.txt", "r")
  file.each do |line|
    @all_movies << line
  end
  file.close
  erb :all_movies
end

get "/movies/:id" do
  file = File.new("movies.txt", "r")
  file.each do |line|
    if line.split(",")[0] == params[:id]
      @movie_array = line.split(",")
    end
  end
  file.close
  erb :movie
end

