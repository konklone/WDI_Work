require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get ("/") do 
	erb :square
end

get ("/multiple") do 
	@number_of_squares = params[:number_of_squares].to_i
	erb :multiple
end