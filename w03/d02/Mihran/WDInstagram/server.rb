require 'sinatra'
require 'pry'
require 'active_record'
require 'erb'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "MihranAbrahamian",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry/'

get "/photos" do
  @photos = Photo.all
  erb :index
end

get "/photos/new" do
  erb :new
end

post "/photos" do
  photo = Photo.new(author: params[:author], photo: params[:photo], date: params[:date])
  photo.save
end
