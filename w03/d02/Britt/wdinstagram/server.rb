require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# establish active record base connection to database
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "brittlewis",
  :password => "",
  :database => "wdinstagram"
)

require_relative './models/entry'

helpers do
	def is_instagram_user?(author)
		author[0] == "@"
	end

  def strip_at(author)
		author[1..-1]
	end
end

# Displays all entries
get "/?" do
	@entries = Entry.all

	erb :index
end

# Displays a form to create a new entry
get "/new/?" do
	erb :form
end

# Creates a new entry, saves it to database
# redirects user to single entry view
post "/create/?" do
	entry = Entry.new({ author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken] })

	entry.save

	redirect "/show/#{entry.id}"
end

# Displays a particular entry
get "/show/:id?" do
	@entry = Entry.find(params[:id])

	erb :show
end