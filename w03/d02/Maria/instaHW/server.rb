require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "mariamercedesmartinez",
  :password => "",
  :database => "instapic"
  )

require_relative './models/entry'
# This connects to create.rb which connects to the db.

get "/instaHW" do
  @entries = Entry.all
  #thisis interacitng with our model and getting it ready to use with the views.
  erb :index
end

get "/instaHW/new" do
  erb :new
end

# Show (just one entry)
# I know the key (or the id)

get "/instaHW/:id" do
  # this will be our show action 
  # b/c it a particular recordby using acive record.
  # Note it is singular!
  @entry = Entry.find(params[:id])

  erb :show
  
end


# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

post "/instaHW" do
#puttin in ne entry in sql
  entry = Entry.new(name: params[:name], pdate: params[:pdate], photo: params[:photo])
  
  entry.save

  redirect "/instaHW/#{entry.id}"
end

get "/instaHW/" do

  erb :new
end

# Expect params[:name] == new_name
put "/instaHW/:id" do
 
end

delete "/instaHW/:id" do
  
end