require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
	render :index
end
