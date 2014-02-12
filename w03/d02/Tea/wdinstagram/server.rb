require 'sinatra'
require 'active_record'
require 'sinatra/reloader'
require 'pry'


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "T-Virus",
  :password => "",
  :database => "sandbox"
)

require_relative './models/photos'


get '/' do
  @photos = Photo.all
  erb :index
  
end

get '/new' do
  erb :new
end

get '/:id' do
  @photo = Photo.find(params[:id])
  erb :show
end

post '/new' do
  photo = Photo.new(author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken])
  # entry.persisted?
  # => false
  photo.save
  # entry.persisted?
  # => true
  redirect "/#{photo.id}"
end



