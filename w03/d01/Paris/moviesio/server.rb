require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'
require 'pg'


get "/" do   
 @greeting = "Welcome to Movies.io"
 @search = "/movies/search"
  erb :index
end

get "/movies/search" do
  erb :forms
end

get "/movies" do

 db_conn = PG.connect( dbname: FILENAME + "_db" )
result = db_conn.exec( "SELECT * FROM movies" )
result.each do |row|
@output_str = "Number #{row['id']}: #{row['year']} "
@output_str += "#{row['poster']}, #{row['title']} )" 

end
db_conn.close

  erb :allmovies
end

get "/movies/:id" do   
 db_conn = PG.connect( dbname: FILENAME + "_db" )
result = db_conn.exec( "SELECT * FROM movies"  )

id = params[:id]
result = "SELECT * FROM movies WHERE id=#{id}"
@puts_movie = result
db_conn.close

  erb :singlemovie
end

post "/movies" do

##### HTTP PARTY!!!!!#####
name = params[:title].gsub(" ", "+")
url = "http://www.omdbapi.com/?t=#{name}"
response = HTTParty.get(url) 
parsed_movie_info = JSON(response)

 db_conn = PG.connect( dbname: 'movies_db' )

    query = "INSERT INTO movies"
    query += "(year, poster, title) VALUES"
    query += "(#{parsed_movie_info['year']}, '#{parsed_movie_info['poster']}', '#{parsed_movie_info['title']}');" 
    db_conn.exec( query )
    db_conn.close

  redirect to("/movies/#{"id"}")
end

# use the where clause to do id

# CREATE TABLE movies (
#   id serial PRIMARY KEY,
#   poster varchar(300) NOT NULL,
#    varchar(50) NOT NULL,
# );














