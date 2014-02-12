require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'
require "pg"

# set variable for database
FILENAME = "movie_list"

get "/" do
  erb :greeting
end

get "/movies/search" do
  erb :form
end

post "/movies" do
  # file
  db_conn = PG.connect( dbname: FILENAME + "_db", host: "localhost" )
  
  # params from form to search
  title = params[:title]
  title = title.gsub(" ", "+")

  url = "http://www.omdbapi.com/?t=#{title}"

  # http request to get the movie info
  response = HTTParty.get(url)

  # Fetches movie data from OMDB
  parsed = JSON(response)

  # set variables for plot to escape quotations
  plot = parsed["Plot"]
  plot_reformatted = plot.to_s.gsub("'",'\\\'')

  query = "INSERT INTO movie_list_db "
  query += "(title, date, poster, plot) VALUES"
  query += "("
  query += "'#{parsed["Title"]}', '#{parsed["Year"].to_i}', '#{parsed["Poster"]}', '#{plot_reformatted}'"
  query += ");"

  # Sends query to table
  db_conn.exec( query )
 
  #finds ID of last entered movie and redirects to that page
  results = db_conn.exec( "SELECT lastval();")
  id = results[0]["lastval"]
  redirect "/movies/#{id}"

  # file.close
  db_conn.close

end

# shows all movies
get "/movies" do
  db_conn = PG.connect( dbname: FILENAME + "_db" )
  @result = db_conn.exec( "SELECT * FROM movie_list_db" )
  erb :display_movies
  
  # * Using a erb "partial" here for a single movie may help you here to keep your code DRY. You'll be able to render that same erb template for EACH movie that you have to display.
end

get "/movies/:id" do
  db_conn = PG.connect( dbname: FILENAME + "_db" )
  @result = db_conn.exec( "SELECT * FROM movie_list_db" )

  if params[:id].to_i.is_a? Fixnum
    @id_num = params[:id]
    erb :display_one
  end

end
