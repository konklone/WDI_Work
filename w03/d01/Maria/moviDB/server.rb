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

  erb :search
end

post '/movies' do
  # Here will be the code to OMDB
  # get it and store it into a file
  # params[:title] dont need it because it is seen below
  name = params[:title].gsub(" ", "+") # To get it ready to be sent as per requirements of the API which needs a +.
  response = HTTParty.get("http://www.omdbapi.com/?t=#{name}") #starts as a string 
  movie_hash = JSON(response) # Its now a hash
   
  #OLD WAY: file = File.new("movies.txt", "a+")
  
  # I made the db in sql "movies" 
  
  #?? Do I need the "_db" ??
  # I think below connects to the db I created
  # and then query is a variable that will insert
  # the values into the DB which is in
  # essence a "movies" hash?
  FILENAME = "movies"
  db_conn = PG.connect( dbname: FILENAME + "_db" )
  
  result = db_conn.exec( "SELECT * FROM movies" )

#I'm so fuzzy on this below
query = "INSERT INTO movies"
    query += "(id, title, year, poster) VALUES"
    query += "("
    query += "'#{movies[:id]}', '#{movies[:title]}',"
    query += "#{movies[:year]}, #{movies[:poster]}'"
    query += ");"
    db_conn.exec( query )

    #fs.close
    db_conn.close
  
## Iterator is not needed because DB includes ID ? ##
  
  # iterator = 0
  # file.each do |line|
  #   iterator += 1
  # end
  # => "id,title,year,poster"
#OLD-->file.puts "#{iterator +1},#{movie_hash["Title"]},#{movie_hash["Year"]},#{movie_hash["Poster"]}" 
  

  file.close  
 
  redirect 'movies' #'movies/#{id}'
end

get '/movies' do

##### Not sure how to check at this point if what I am 
##### doing is correct so IGNORE BELOW THIS #####
# The rest of tonight I will review my movies app and
# the shapemaker app, I amstill fuzzy on the connection
# between routes and layout.
@all_movies = []
  file = File.new("movies.txt", "a+")
  file.each do |line|
    @all_movies << line
  end
  file.close
  erb :all_movies
end

get "/movies/:id" do

  file = File.new("movies.txt", "a+")
  file.each do |line|
    line.split(",")
    if line.split(",")[0] == params[:id]
      @receipt_array = line.split(",")
    end
  file.close
  erb :movies
  end
end
# Show the user all the previously searched for movies
#get '/movies/' do
  # layout and yield to an erb file, Lastly interpolate
#erb :
  # => Title: title
  # => Year: 
#end







############ SCRATCH ##########################
  #show the ALL data you have in the file
  # Here will be the code to OMDB
  #@movie = params[:movie]
  #just one partivcular movie
  #need to figure out how to show the poster



# name = "the room"

# name = params[:title].gsub(" ", "+")


# url = "http://www.ombapi.com/?t=#{name}"

# response = HTTParty.get(url)

# parsed = JSON(response)
# binding.pry
