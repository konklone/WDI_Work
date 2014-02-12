require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'
require 'pg'

get "/" do
  erb :index
end

get "/movies/search" do
  erb :search
end

post "/movies" do

  @movie_title = params[:movie_title].gsub(" ","+")

  url = "http://www.omdbapi.com/?t=#{@movie_title}"
  response = HTTParty.get(url)
  parsed = JSON(response)

  year = parsed["Year"]
  poster = parsed["Poster"]
  title = parsed["Title"]

#line_count = fs.count + 1 # increment past last line for unique id
#fs.puts "#{line_count}:" + new_receipt.values.to_a.join( "," )
query = "INSERT INTO movies"
query += "(title, poster, year) VALUES"
query += "("
query += "'#{title}', '#{poster}',"
query += "'#{year}'"
query += ");"

db_conn = PG.connect(dbname: "movies_db")

db_conn.exec(query)

db_conn.close

redirect to ("/movies")

end


get "/movies" do

  db_conn = PG.connect(dbname: "movies_db")
  @result = db_conn.exec("SELECT * FROM movies")

  erb :results

end




# get "/movies/:id" do
  
#   file = File.new("movie_list.txt", "r")
#   @movie_list_array = []
#   file.each do |line|
#     @movie_list_array.push(line.split(","))
# end 
# file.close 

# @id = params[:id].to_i - 1
# @title = @movie_list_array[@id][1]
# @poster = @movie_list_array[@id][2]
# @year = @movie_list_array[@id][3]

# erb :partial
# end
#     # @movie_list_array.each do |sub_array|
#     #   @title = sub_array[1]
#     #   @poster = sub_array[2]
#     #   @year = sub_array[3]
#     #   erb :partial
#     # end





