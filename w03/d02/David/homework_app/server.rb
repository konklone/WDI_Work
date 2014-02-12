require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "DtotheFP",
  password: "",
  database: "sandbox"
)

require_relative './models/instagram.rb'


get "/" do
  @instagrams = Instagram.all

  erb :index
end

get "/new" do
  
  erb :new
end

post "/new" do
  entry = Instagram.new(author: params[:author], date: params[:date], photo: params[:image])
  entry.save

  redirect "/new/#{entry.id}"
end

get "/new/:id" do
  @instagram = Instagram.find(params[:id])
  
  erb :show
end