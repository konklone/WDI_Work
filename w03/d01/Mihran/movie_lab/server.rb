require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'

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
  # plot = parsed ["Plot"]

file = File.new("movie_list.txt","a+")

film_id = file.count + 1

a = "#{film_id}, #{title}, #{poster}, #{year},"
file.puts a
file.close

  redirect to ("/movies")

end

get "/movies/:id" do
  
  file = File.new("movie_list.txt", "r")
  @movie_list_array = []
  file.each do |line|
    @movie_list_array.push(line.split(","))
end 
file.close 

@id = params[:id].to_i - 1
@title = @movie_list_array[@id][1]
@poster = @movie_list_array[@id][2]
@year = @movie_list_array[@id][3]

erb :partial
end


get "/movies" do
  file = File.new("movie_list.txt","r")
  @movie_list_array = []
  file.each do |line|
    @movie_list_array.push(line.split(","))
    end
      file.close
      erb :results

end


    # @movie_list_array.each do |sub_array|
    #   @title = sub_array[1]
    #   @poster = sub_array[2]
    #   @year = sub_array[3]
    #   erb :partial
    # end





