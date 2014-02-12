require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

FILENAME = "movies"
# db_conn = PG.connect(dbname: FILENAME + "_db")  
  


  get("/") do
    erb :index 
  end
  
  get("/movies/search") do 
    erb :form
  end
  
  # fetch movie data
  #  save data as in a database
  #assign an id
  # redirect to movies/id 
  post("/movies") do 
    @entry= params[:movie].gsub(" ", "+")
    url = "http://www.omdbapi.com/?t=#{@entry}"

    grabbed = HTTParty.get(url)
    data = JSON(grabbed)


    @title = data["Title"]
    @year = data["Year"].to_i
    @poster = data["Poster"]

    query_str = "INSERT INTO movies (title, year, poster) "
    query_str+="VALUES ('#{@title}', #{@year}, '#{@poster}') RETURNING id;"
    db_conn = PG.connect(dbname: FILENAME + "_db")
    db_conn.exec(query_str)
    
    locale = db_conn.exec( "SELECT lastval();")
    actual = locale[0]["lastval"]
    redirect("/movies/#{actual}")
    db_conn.close
    erb :movie_display
  end
  
  get("/movies") do 
    db_conn = PG.connect(dbname: FILENAME + "_db")
    @the_movie = db_conn.exec( "SELECT * FROM movies;")
    db_conn.close
    erb :movie_display
  end
  
  get("/movies/:id") do 
    @id = params[:id]
    db_conn = PG.connect(dbname: FILENAME + "_db")
    @the_movie = db_conn.exec( "SELECT * FROM movies;")

    db_conn.close

   erb :movie_display
  end