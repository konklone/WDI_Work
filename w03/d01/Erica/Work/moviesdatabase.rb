require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pg'
require 'pry'

FILENAME = "movies"
@info = Array.new
db_conn = PG.connect( dbname:"movies" )

    result = db_conn.exec( "SELECT * FROM movies" )


    query = "INSERT INTO movies "
    query += "(title, year, img) VALUES "
    query += "("
    query += "'#{@info[0]}', '#{@info[1]}', '#{@info[2]}'"
    query += ");"
    db_conn.exec( query )

db_conn.close 


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

    
    @info = Array.new
    @info << hash['Title']
    @info << hash['Year']
    @info << hash['Poster']

   erb :all_movies
  end

  # redirect to("/movies/#{id}")
end

get '/movies' do
  db_conn = PG.connect(dbname: "movies")
  @results = db_conn.exec("SELECT * FROM movies;")
  erb :all_movies
end

# get "/movies/:id" do
#   # file = File.new("movies.txt", "r")
#   # file.each do |line|
#   #   if line.split(",")[0] == params[:id]
#   #     @movie_array = line.split(",")
#   #   end
  # end
  # # file.close
#   # erb :movie
# # end
# end
# end


