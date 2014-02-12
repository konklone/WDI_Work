require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'

get "/" do
  erb :greeting
end

get "/movies/search" do
  erb :form
end

post "/movies" do
  file = File.new("movies.txt", "a+")
  title = params[:title]
  title = title.gsub(" ", "+")

  url = "http://www.omdbapi.com/?t=#{title}"

  # http request to get the movie info
  response = HTTParty.get(url)

  # Fetches movie data from OMDB
  parsed = JSON(response)

  # set variables for the title, year, and poster
  title = parsed["Title"]
  year = parsed["Year"]
  poster = parsed["Poster"]
  plot = parsed["Plot"]
  binding.pry
  # count line.number in the file to assign incremental id for entry
  id_num = 0
  id_num += file.readlines.size

  # take that info and turn it into a string
  movie_info = "#{id_num}, #{title}, #{year}, #{poster}, #{plot}"

  # adds entry as a CSV to movies.txt
  file.puts movie_info
  file.close

  redirect to ("movies/#{id_num}")

end

# shows all movies
get "/movies" do
  erb :display_movies
  
  # * Using a erb "partial" here for a single movie may help you here to keep your code DRY. You'll be able to render that same erb template for EACH movie that you have to display.
end

get "/movies/:id" do

  if params[:id].to_i.is_a? Fixnum
    @id_num = params[:id]
    erb :display_one
  end

end
