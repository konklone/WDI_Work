require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'


# App will allow you to find if your friends are
# on the top three social networks, Twitter, LinkedIn
# or Facebook. If they are, it will allow you to follow 
# them there.

get '/' do
  erb :welcome
end

get '/users/search' do
  erb :form
end

post '/users/search' do


name = params[:name]

users = {}
user[:platforms] = {}
 
social_platforms = [:twitter, :linkedin, :facebook]
 
social_platforms.each do |platform|
	puts "What's your username at #{platform.to_s}?"
	user[:platforms][platform] = gets.chomp
	puts 
end
 
 # Count the number of lines in the file to figure out what id we should assign
    lines_in_file = 0
    file = File.new("movies.txt", "a+")
    file.each do |line|
      lines_in_file += 1
    end
    file.close
    id = lines_in_file + 1

    # Create an array to hold the info we want to save
    info = []
    info << id
    info << parsed["Title"]
    info << parsed["Year"]
    info << parsed["Poster"]

    # Write the info to the csv
    file = File.new("users.txt", "a+")
    file.puts info.join(",")
    file.close

  # Redirect to the page that shows the movie that was just added
  redirect to("/users/#{id}")
end

get '/movies' do
  @all_movies = []
  file = File.new("users.txt", "a+")
  file.each do |line|
    @all_user << line  
  end
  file.close
  erb :all_movies
end

get "/movies/:id" do
  @movie_array = []
  file = File.new("users.txt", "a+")
  file.each do |line|
    if line.split(",")[0] == params[:id]
      @user_array = line.split(",")
    end
  end
  file.close
  erb :user
end


