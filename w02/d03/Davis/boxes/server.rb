require 'sinatra'
require 'erb'

get '/' do
	#go to dir views/ and find boxes.erb
	erb :boxes #erb is a method erb(:file)
	#if not specify, default to layout.erb
end

