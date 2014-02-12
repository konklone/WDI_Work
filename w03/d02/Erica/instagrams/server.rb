require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "evobersi",
  :password => "",
  :database => "sandbox"
)

require_relative './models/entry'

get "/" do
  @instagrams = Instagram.all 
  erb :index
end

get "/photos/new" do
  erb :new 
end

get "/photos/:id" do
  @instagram = Instagram.find(params[:id])
  erb :show
end


post "/photos" do
  binding.pry 
  entry = Instagram.new({author: params[:author], photo: params[:photo], date: params[:date]})
  entry.save

  redirect "/photos/#{entry.id}"
end

