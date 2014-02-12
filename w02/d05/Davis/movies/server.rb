require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'httparty'
require 'json'
require 'pry'

get '/' do 
	@h1 = "Welcome to Movies.io"
	erb :home
end

get '/movies/search' do 
	@h1 = "Search A Title"
	erb :form
end


get '/movies/:id' do 
	@h1 = "Your Movie Below!"
	erb :specific
end

post '/movies' do 
	#sorry Peter, page out of your solutions
	total_lines = 0 #iterator
	file = File.new("movies.txt", "a+")
	file.each do |line|
		total_lines += 1
	end
	@id = total_lines + 1

	name = params[:title].gsub(" ","+")
	url = "http://www.omdbapi.com/?t=#{name}"
	response = HTTParty.get(url)
	parsed = JSON(response)

	title = parsed["Title"]
	year = parsed["Year"]
	poster = parsed["Poster"]

	# binding.pry

	file = File.new("movies.txt", "a+")
	file.puts "#{@id},#{title},#{year},#{poster}"	

	file.close

	# binding.pry
	redirect to("/movies/#{@id}")
end

get '/movies' do
	@h1 = "All Movies Below!"
	erb :all
end

