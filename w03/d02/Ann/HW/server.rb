require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'erb'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ann", 
  :password => " ", 
  :database => "sandbox"
  )

require_relative './models/entry'

get "/photos" do 
  @photos = Photo.all 
  erb :index 
end 

get "/photos/new" do 
  erb :new
end 

get "/photos/:id" do
  @photo = Photo.find(params[:id])
  erb :show 
end

post "/photos" do
  photo = Photo.new({author: params[:author], photo: params[:photo], date: params[:date]})

  photo.save 

  redirect "/photos/#{photo.id}"
end





