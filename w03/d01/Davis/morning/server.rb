require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'

get '/' do 
	erb :home
end

# Note: the / at end of multiple 
# Note: don't need /:num
get '/multiple/' do
	@num = params[:num].to_i

	erb :multiple
end

