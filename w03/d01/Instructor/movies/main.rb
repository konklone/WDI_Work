require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pg'
require 'pry'

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

    db = PG.connect( dbname: 'movies_db', host: 'localhost' )
    r = db.exec( "INSERT INTO movies (title, year, poster) VALUES ( '#{hash['Title']}', '#{hash['Year']}', '#{hash['Poster']}' ) returning id;" )
    id = r[0]['id'] # get the last id created (using 'returning id' in the above SQL)
    db.close
  end

  redirect to("/movies/#{id}")
end

get '/movies' do

  db = PG.connect( dbname: 'movies_db', host: 'localhost' )
  @all_movies = db.exec( "SELECT * FROM movies;")
  db.close

  erb :all_movies
end

get "/movies/:id" do

  db = PG.connect( dbname: 'movies_db', host: 'localhost' )
  @all_movies = db.exec( "SELECT * FROM movies WHERE id = #{params[:id]};" )
  @movie_array = @all_movies[0]
  db.close

  erb :movie
end

