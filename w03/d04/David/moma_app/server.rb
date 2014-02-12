require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require_relative 'painting'

get "/" do

erb :index
end

get "/paintings" do
  @artists = Artist.all
  @paintings = Painting.all
  erb :paintings
end

get "/paintings/new" do
  
  erb :new
end

post "/paintings" do
  artist_name = params[:name]
  artist_dob = params[:dob]
  artist_nation = params[:nation]
  painting_title = params[:title]
  painting_year = params[:year].to_i
  painting_url = params[:url]

  artist = Artist.new(name: "#{artist_name}", nationality: "#{artist_nation}", date_of_birth: "#{artist_dob}")
  artist.save

  painting = Painting.new(title: "#{painting_title}", year: painting_year, image_url: "#{painting_url}")
  binding.pry
  painting.artist_id = artist.id
  painting.save

  redirect "/paintings/#{artist.id}"
end

get "/paintings/:id" do

  artist = Artist.find_by(id: "#{params[:id]}")
  @painting = Painting.find_by(artist_id: artist.id)
  erb :paintings
end
