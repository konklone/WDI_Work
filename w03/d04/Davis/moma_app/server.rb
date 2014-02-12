require 'sinatra'
require 'sinatra/reloader'
require_relative './moma.rb'


# homepage

# MENU:	
# add artist to database
	# via form
# search for artist
# search for specific work

# split add arist & add painting
	# add artist w/o
	# add painting to existing

# Features:
	# click on nationality to see artists of that nationality


get '/' do 
	@h1 = "Welcome to iMuseumArtAppThingyable.io.ly"

	erb :home
end

# list all artists
get '/artist/all' do 
	@h1 = "All Artists Below:"
	@artists = Artist.all

	# binding.pry

	erb :artist_all
end

get '/artist/:name' do
	@name = params[:name]

	@target_artist = Artist.where(name: "#{@name}")[0]

	@h1 = "All works by #{@name} Below:"

	erb :artist_specific
end

get '/all_works' do 
	@h1 = "All Works Below:"

	erb :all_works
end

get '/painting/:title' do 
	@h1 = "#{params[:title]}"
	@title = params[:title]

	erb :painting
end

get '/add' do
	@h1 = "Add an Entry Below"

	erb :add
end

post '/add' do
	painting = params[:painting]

	# artist
	name = params[:name]
	birth_date = params[:name]
	nationality = params[:nationality]
	create_artist(name: name, birth_date: birth_date, nationality: nationality)

	# painting
	title = params[:title]
	year = params[:year]
	image_url = params[:image_url]
	artist_id = @entry_id = Artist.last.id + 1
	connect_painting(title: title, year: year, image_url: image_url, artist_id: artist_id)

	redirect("/painting/#{painting}")
end