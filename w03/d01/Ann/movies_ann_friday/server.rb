require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'
require 'pg'

#name = "no country for old men"

#name = params[:title].gsub(" ", "+")

#url = "http://omdbapi.com/?t=#{name}"

#response = HTTparty.get(url)
# parsed = JSON(response)
# puts parsed["Year"]
# puts parsed["Poster"]
# puts parsed["Title"]

get "/" do 
  @search_movie = "/movies/search"
  erb :index 
end 

get "/movies/search" do 
       erb :search
end 

post "/movies" do 
# name = "no country for old men"
    @movie_title = params[:movie_title].gsub(" ", "+")

    url = "http://www.omdbapi.com/?t=#{@movie_title}"

    response = HTTParty.get(url)
    parsed = JSON(response)

    year = parsed["Year"]
    poster = parsed["Poster"]
    title = parsed["Title"]

    #file = File.new("movie_list.txt","a+")
    #film_id = file.count + 1 

    #line_count = fs.count + 1 # increment past last line for unique id
    #fs.puts "#{line_count}:" + new_receipt.values.to_a.join( "," )
    query = "INSERT INTO movies_db "
    query += "(title, poster, year) VALUES"
    query += "("
    query += "'#{title}', '#{poster}',"
    query += "'#{year}'"
    query += ");"

    db_conn = PG.connect( dbname: "movies_db" )
    db_conn.exec(query)
    db_conn.close

    binding.pry 

    redirect to("/movies") 

end 

get ("/movies") do 
    
     db_conn = PG.connect(dbname: "movies_db")
    @result = db_conn.exec( "SELECT * FROM movies_db" )

    erb :results 
end 

# get "/movies/:id" do 

#   file = File.new("movie_list.txt","r")
#   @movie_list_array = []
#   file.each do |line|
#       @movie_list_array.push(line.split(","))
#   end 
#   file.close 

#   @id = params[:id].to_i - 1 

#   @title = @movie_list_array[@id][1]
#   @poster = @movie_list_array[@id][2]
#   @year = @movie_list_array[@id][3]

#   erb :partial 
# end 





# # file = File.new("movie_list.txt", "r")
# #     file.split(",")
# #     @single_movie_array = []
    
    
# #     @single_movie_array[1] 
# #     @single_movie_array[2]
# #     @single_movie_array[3] 
    
