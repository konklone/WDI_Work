require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require './config/environments'
require 'pry'

require_relative 'config/environments'

require_relative '../models/show'
require_relative '../models/song'

after do
    ActiveRecord::Base.clear_active_connections!
end

# Welcome to Broadway.ly!

get "/" do
	erb :index
end

# Index of all shows
# with links to individual shows

get "/shows" do
	erb :"/shows/index"
end

# Form to create new show

get "/shows/new" do
	erb :"/shows/new"
end

# Create action - new show - redirect to that
# show

post "/shows" do
	title = params[:title]
	year = params[:year]
	composer = params[:composer]
	img_url = params[:img_url]
	
	Show.create(title: "Phanton of the Opera", year: 1988, composer: "Andrew Lloyd Webber", img_url: "http://upload.wikimedia.org/wikipedia/en/f/f8/Phantom.jpg")
	id = Show.last.id

	redirect("/shows/#{id}")
end

# Individual show page
# Links to list of all songs `/shows/:id/songs`
# and form to create new songs `/shows/:id/songs/new`

get "/shows/:id" do
	@id = params[:id]

	erb :"/shows/show"
end

# Form to create new songs

get "/shows/:id/songs/new" do
	@id = params[:id]
	erb :"/songs/new"
end

# Create action - new songs for a show - redirect
# to that song

post "/shows/:id/songs" do
	title = params[:title]
	embed_url = params[:embed_url]
	show_id = params[:id]

	Song.create(title: title, embed_url: embed_url, show_id: show_id)

	redirect("/shows/#{show_id}/songs")
end

# Lists all songs from the show

get "/shows/:id/songs" do
	@id = params[:id]

	erb :"/songs/songs"
end

# Shows just one song from the show

get "/shows/:show_id/songs/:song_id" do
	@song_id = params[:song_id]

	erb :"/songs/song"
end