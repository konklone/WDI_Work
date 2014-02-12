require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pg'
require 'pry'

DATABASENAME = "movies"
db_conn = PG.connect( dbname: DATABASENAME + "_db" )

get "/" do
  erb :index
end

get "/movies" do
  @results = db_conn.exec("SELECT * FROM movies;")
  erb :movies
end

get "/movies/search" do
  erb :search
end

get "/movies/recent" do
  @results = db_conn.exec("SELECT * FROM movies WHERE year >= '1988';")
  erb :recent
end

get "/movies/good" do
  @results = db_conn.exec("SELECT * FROM movies WHERE rating >= '8.0';")

  erb :good
end

get "/movies/funny" do
  @results = db_conn.exec("SELECT * FROM movies WHERE genre LIKE '%Comedy%';")

  erb :funny
end

post "/movies" do 
  name = params[:title]
  name = name.gsub(" ", "+")
  url = "http://www.omdbapi.com/?t=#{name}"
  response = HTTParty.get(url)
  parsed = JSON(response)
  query_str = "INSERT INTO movies "
  query_str += "(title, year, poster, rating, genre) VALUES "
  query_str += "('#{parsed["Title"]}', '#{parsed["Year"]}', '#{parsed["Poster"]}', '#{parsed["imdbRating"]}', '#{parsed["Genre"]}');"
  db_conn.exec( query_str )
  #finds ID of last entered movie and redirects to that page
  results = db_conn.exec( "SELECT lastval();")
  id = results[0]["lastval"]
  redirect "/movies/#{id}"
end

get "/movies/:id" do 
  id = params[:id]
  #gets a row of the most recently entered movie
  @results =  db_conn.exec( "SELECT * FROM movies WHERE id = lastval();")
  erb :movies
end



