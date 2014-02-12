require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

get "/" do
	erb :boxes
end