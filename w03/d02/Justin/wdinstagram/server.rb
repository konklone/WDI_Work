require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "postgres",
  :password => "postgres",
  :database => "sandbox"
)

require_relative './models/picture'

get "/" do
	@photos = Picture.all
	erb :index
end

get "/photos/new" do
	erb :new
end

post "/photos" do
  photo = Picture.new(date_taken: params[:date_taken], name: params[:name], img_url: params[:img_url])
  photo.save
  redirect "/photos/#{photo.id}"
end

get "/photos/:id" do
  @photo = Picture.find(params[:id])

  erb :show
end
