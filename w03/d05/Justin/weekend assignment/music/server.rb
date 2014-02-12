require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'config/environments'
require_relative 'models/band'
require_relative 'models/song'

# Welcome to Broadway.ly!

get "/" do
	erb :index
end

# Index of all bands
# with links to individual bands

get "/bands" do
	@bands = Band.all
	erb :"bands/index"
end


# Form to create new show

get "/bands/new" do
	erb :"bands/new"
end

# Create action - new show - redirects to that
# show

post "/bands" do
	band = Band.new(params[:band])
	band.save
	redirect '/bands'
end

# Individual show page
# Links to list of all songs `/shows/:id/songs`
# and form to create new songs `/shows/:id/songs/new`

get "/bands/:band_id" do
	@band = Band.find(params[:band_id])
	@songs = Song.all
	erb :"bands/band"
end

# Form to create new songs

get "/bands/:band_id/songs/new" do
	@band = Band.find(params[:band_id])
	erb :"songs/new"
end

# Create action - new songs for a show - redirects
# to that song

post "/bands/:band_id/songs" do
end

# Lists all songs from the band
get "/bands/:band_id/songs" do
	# pid = params[:id]
	@band = Band.find(params[:band_id])
	@songs = Song.all   #.find_by(show_id: params[:id])
	erb :"songs/index"
end

# Shows just one song from the band

get "/bands/:band_id/songs/:song_id" do
	@band = Band.find(params[:band_id])
	@song = Song.find(params[:song_id])
	erb :"songs/song"
end