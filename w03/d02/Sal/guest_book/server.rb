require 'sinatra'
require 'active_record'
require 'pry'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "sal",
  :password => "", 
  :database => "sandbox"
)

require_relative './models/entry'

# Create
# Read
# Update
# Destroy
# Guest Book entries

# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"

# Index

get "/guest_book" do
  @entries = Entry.all
  erb :index
end

get "/guest_book/new" do 
  erb :new
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
  @entry = Entry.find(params[:id])
  erb :show 
end

post "/guest_book" do 
  entry = Entry.new(comment: params[:comment], name: params[:name])
  binding.pry
  entry.save
  redirect "/guest_book/#{entry.id}"
end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id


# Expect params[:name] == new_name
put "/guest_book/:id" do

end

delete "/guest_book/:id" do

end