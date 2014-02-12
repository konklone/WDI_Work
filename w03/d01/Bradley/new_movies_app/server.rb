require 'sinatra'
# require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pg'

get("/") do
  erb :index
end

get("/movies/search") do
  erb :search
end

get("/movies/find") do
  erb :id_search
end

get("/movies/results") do
  @id = params[:id]
  @result = {}
  db_conn = PG.connect( dbname: "movies_db")
  results = db_conn.exec("SELECT * FROM movies;")
  results.each do |row|
    if row['id'].to_s == @id
      @result = row
    end
  end
  db_conn.close
  erb :results
end

post("/movies") do
  new_movie = {}
  title = params[:title].gsub(" ", "+")
  url = "http://www.omdbapi.com/?t=#{title}"
  parsed = JSON(HTTParty.get(url))

  new_movie[:title] = parsed["Title"]
  new_movie[:year] = parsed["Year"]
  new_movie[:poster] = parsed["Poster"]
  new_movie[:rated] = parsed["Rated"]
  new_movie[:genre] = parsed["Genre"]
  new_movie[:imdb] = parsed["imdbRating"]

  db_conn = PG.connect( dbname: "movies_db")
  query = "INSERT INTO movies "
  query += "(title, year, rated, imdb, genre, poster) VALUES"
  query += "( '#{new_movie[:title]}', '#{new_movie[:year]}', '#{new_movie[:rated]}', '#{new_movie[:imdb]}', '#{new_movie[:genre]}', '#{new_movie[:poster]}' );"  
  db_conn.exec( query )

  db_conn.close

  redirect "/movies"
end

get("/movies") do
  db_conn = PG.connect( dbname: "movies_db")
  @results = db_conn.exec("SELECT * FROM movies;")
  db_conn.close
  erb :movies 
end

get("/movies/recent") do
  db_conn = PG.connect( dbname: "movies_db")
  results = db_conn.exec("SELECT * FROM movies;")
  @recent = []
  results.each do |row|
    if row['year'].to_i >= 2008
      @recent << row
    end
  end
  db_conn.close
  erb :recent
end

get("/movies/good") do
  db_conn = PG.connect( dbname: "movies_db")
  results = db_conn.exec("SELECT * FROM movies;")
  @good = []
   results.each do |row|
    if row['imdb'].to_f >= 8.0
      @good << row
    end
  end
  db_conn.close
  erb :good
end

get("/movies/funny") do
  db_conn = PG.connect( dbname: "movies_db")
  results = db_conn.exec("SELECT * FROM movies;")
  @comedies = []
  results.each do |row|
    if row['genre'].split(", ").include?('Comedy')
      @comedies << row
    end
  end
  db_conn.close
  erb :funny
end






