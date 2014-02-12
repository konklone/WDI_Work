require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do 
	erb :main
end