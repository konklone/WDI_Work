require 'sinatra'
require 'pry'

n = ["ts", "34th", "28th", "23rd", "us", "8th"]

get "/" do
	"MTA Trip Calculator"
end

get "/mta" do
	"The N Train has the following stops:\n#{n.join(", ")}"
end

post "/mta/trip" do
	start = params[:start]
	stop = params[:stop]
	binding.pry
	net = ( n.index(start) - n.index(stop) ).abs
	"Your trip is #{net} stops."
end