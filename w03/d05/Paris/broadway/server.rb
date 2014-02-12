require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'config/environments'
require_relative './models/broadway'

  # ActiveRecord::Base.establish_connection(
  # :adapter => "postgresql", 
  # :host => "localhost",
  # :username => "Paris",
  # :password => "",
  # :database => "broadway_db"
  # )

after do
  ActiveRecord::Base.clear_active_connections!
end

# Welcome to Broadway.ly!

# after do
#   ActiveRecord::Base.clear_active_connections!
# end

get "/" do
  @greeting = "Welcome to Broadway.ly!"
  erb :index
end

# Index of all shows
# with links to individual shows

get "/shows" do
  @shows = Show.all
  erb :"shows/show_index"
end

# Form to create new show

get "/shows/new" do

  erb :"shows/show_new"
end

# Individual show page
# Links to list of all songs `/shows/:id/songs`
# and form to create new songs `/shows/:id/songs/new`

get "/shows/:id" do
  @show = Show.find(params[:id])
  erb :"shows/show_show"
end

# Create action - new show - redirects to that
# show
# Form to create new songs

post "/shows" do
 show = Show.new({title: params[:title], year: params[:year], composer: params[:composer], img_url: params[:img_url]})
 show.save
  redirect "/shows/#{show.id}" 
end

# Lists all songs from the show




get "/shows/:show_id/songs" do
  @songs = Song.where(show_id: params[:show_id])
  @show = Show.find(params[:show_id])
  erb :"songs/song_index"
end

# Shows just one song from the show

get "/shows/:show_id/songs/:song_id" do
  @single_song  = Song.where(show_id: params[:show_id], id: params[:song_id])
  erb :"songs/song_show"
end

get "/shows/:show_id/songs/new" do
  erb :"songs/song_new"
end

# # Create action - new songs for a show - redirects
# # to that song

post "/shows/:show_id/songs" do
  @new_song = Song.new(song_title: params[:song_title], embed_url: params[:embed_url])
  @show = Show.find(show_id: params[:show_id])
  @new_song.show_id = params[:show_id]
  @new_song.save
  redirect "/shows/#{@show.id}/songs/#{@new_song.id}" 
end









