# Require the sinatra framework, ActiveRecord and postgres, pry
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

#  This establishes a connection.  Base is the core object (module) within ActiveRecord
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "thomasbrennan",
    :password => "",
    :database => "sandbox"
  )

# require the photo.rb file which contains the Photo class that inherits from ActiveRecord
require_relative './models/photo'

#binding.pry

# Create the root route
get "/photo" do
  @photos = Photo.all
  erb :index
end

# Enter a new photo form
get "/photo/new" do
  erb :new
end


post "/photo" do
  # entry is an instance of the photo class
  photo = Photo.new(author: params[:author], name: params[:name], date_taken: params[:date_taken])

  photo.save

  redirect "/photo/#{photo.id}"
end

get "/photo/:id" do
  @photo = Photo.find(params[:id])
  erb :show
end



#binding.pry

