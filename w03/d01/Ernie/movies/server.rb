require 'httparty'
require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'pry'
require 'pg'

FILENAME = "movies"

get '/' do 
  erb :welcome 
end

get "/movies/search" do
  erb :forms
end

post "/movies" do

  name = params[:title].gsub(" ", "+")
  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)
  parsed = JSON(response) 
  parsed["Title"]
  parsed["Year"]
  parsed["Poster"]

  db_conn= PG.connect(dbname: FILENAME , host: "localhost")
  query_str = "INSERT INTO movies (title, year, poster) "
  query_str+="VALUES ('#{"Title"}', #{"Year"}, '#{"Poster"}');"
  db_conn.exec(query_str)
  db_conn.close

# Redirect to the page that shows the movie we just made
  redirect to("/movies/#{id}")
end


get '/movies' do
  db_conn = PG.connect( dbname: FILENAME , host: "localhost")
  @all_movies  = db_conn.exec( "SELECT * FROM movies" )
  @all_movies.each do |row|
  end
  db.close
  erb :all_movies
end

get "/movies/:id" do
  db_conn = PG.connect( dbname: FILENAME ,host: "localhost")
  file.each do |row|
    if line.split(",")[0] == params[:id]
      @movies_array = line.split(",")
    end
  end
  db.close
  erb :movies
end




