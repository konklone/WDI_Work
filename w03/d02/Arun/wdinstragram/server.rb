require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "postgres",
	:password => "postgres",
	:database => "wdinstagram"
	)
require_relative './models/entry'


get "/wdinstagram" do
	@instagram = Instagram.all
	erb :index
end 

post "/wdinstagram" do
	entry = Instagram.new(author: params[:author], url: params[:url], date: params[:date])
		entry.save

		redirect "/wdinstagram/#{entry.id}"
end

get "/wdinstagram/new" do
	erb :new
end

get "/wdinstagram/:id" do
	@input = Instagram.find(params[:id])

	erb :show
end
