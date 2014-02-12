# add styling
# consolidate search function

# Note: because I did not want to change already existing
# Entry / entries, I used InstaEntry instead
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# setup activerecord before app
#   not part of model
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "daviskoh",
  # no password because local connection
  :password => "",
  :database => "sandbox"
)

require_relative './models/insta_entry'

get '/' do 
	redirect('/show/all')
end

get '/show/all' do 
	@h1 = "Photo Stream"

	@insta_entries = InstaEntry.all

	erb :index
end

# create link to here for other pages
# change to diff path???
get '/new' do
	@h1 = "Upload a New Photo Entry"

	erb :new
end

post '/new' do
	insta_entry = InstaEntry.new(author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken])
	insta_entry.save

	redirect("/show/#{insta_entry.id}")
end

get '/show/:id' do 
	@h1 = "Your Recent Upload Mane"

	@id = params[:id].to_i

	erb :show
end

get '/searchby/:type' do 
	@type = params[:type]

	if @type == "id"
		@h1 = "Search Photos by ID Number"
	elsif @type == "author"
		@h1 = "Search Photos by Name"
	else #by date
		@h1 = "Search Photo by Date"
	end

	erb :search
end

get '/searchby/:type/view' do
	@h1 = "Your Search Results"

	@id = params[:id].to_i
	@author = params[:author]
	@date = params[:date]

	if @author
		erb :byauthor
	elsif @date
		erb :bydate
	else #id because @id holds value of 0???
		erb :show
	end
end
# consolidate via some variation of #find / #find_by method?

get '/delete' do 
	erb :delete
	# binding.pry
end

post '/delete' do 
	# take id as param
	@delete_id = params[:delete_id].to_i #incase not num
	# delete row associated w/ id
	InstaEntry.all.delete(@delete_id)
	# redirect to show all
	redirect('/show/all')
end

# sloppy but repair later
get '/clicksearch/:name' do 
	@author = params[:name]

	erb :byauthor
end
