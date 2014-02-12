require "sinatra"
require "sinatra/reloader"
require "httparty"
require "json"
require "pry"

# name = "The little mermaid"

# binding.pry on "parsed"

# puts parsed["Title"]
# puts parsed["Year"]
# puts parsed["Poster"]

get "/" do
   erb :index
end

get "/movies/search" do
   erb :search
end

post "/movies" do
   name = params[:title].gsub(" ", "+")
   url = "http://www.omdbapi.com/?t=#{name}"

   # Count the lines in file to generate id
   lines_in_file = 0
   file = File.new("movies.txt", "a+")
   file.each do |line|
      lines_in_file += 1
   end
   file.close
   id = lines_in_file + 1

   # Get the movie's data from API
   response = HTTParty.get(url)
   parsed = JSON(response)

    # Create an array to hold the info we want to save
    movie_info = []
    movie_info << id
    movie_info << parsed["Title"]
    movie_info << parsed["Year"]
    movie_info << parsed["Poster"]

    # Write the info to the CSV
    file = File.new("movies.txt", "a+")
    file.puts movie_info.join(",")
    file.close

     # Redirect to the page that shows the movie searched
     redirect "/movie/#{id}"
end

get "/movies" do
   @all_movies = []
   file = File.new("movies.txt", "a+")
   file.each do |line|
    @all_movies << line
   end
   file.close

   erb :all_movies
end

get "/movie/:id" do 
   file = File.new("movies.txt", "a+")
   file.each do |line|
      if line.split(",")[0] == params[:id]
         @movies_array = line.split(",")
      end
   end
   file.close

   erb :movie
end
