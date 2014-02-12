require 'sinatra'
require 'sinatra/reloader'

get "/" do
	erb :index
end

get "/multiple" do
	@shape = params[:shape]
	@num = params[:num].to_i
	erb :multiple
end