require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader'

  get("/") do
    erb :index 
  end
  
  get("/movies/search") do 
    erb :form
  end
  
  # fetch movie data
  #  save data as csv in txt file
  #assign an id
  # redirect to movies/id 
  post("/movies") do 
    movie_file = File.new("views/movies.txt", "a+")

    @id = movie_file.readlines.count + 1

    @entry= params[:movie].gsub(" ", "+")
    url = "http://www.omdbapi.com/?t=#{@entry}"

    grabbed = HTTParty.get(url)
    data = JSON(grabbed)

    @title = data["Title"]
    @year = data["Year"]
    @poster = data["Poster"]

    movie = []
    movie << @id
    movie << @title
    movie << @year
    movie << @poster

    movie_file.puts movie.join(",")
    movie_file.close

    redirect("/movies/#{@id}")
    erb :movie_display
  end
  
  get("/movies") do 
    erb :movie_display
  end
  
  get("/movies/:id") do 
   erb :movie_display
  end