require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'erb'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ann", 
  :password => " ", 
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

# { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

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
  entry = Entry.new({guest: params[:guest], comment: params[:comment]})

  entry.save 

  redirect "/guest_book/#{entry.id}"
end




