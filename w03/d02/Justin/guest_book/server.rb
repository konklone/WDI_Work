require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "postgres",
  :password => "postgres",
  :database => "sandbox"
)

require_relative './models/entry'



get "/guest_book" do
  @entries = Entry.all

  erb :index
end

get "/guest_book/new" do
  erb :new
end

post "/guest_book" do
  entry = Entry.new(comment: params[:comment], name: params[:name])
  entry.save
  redirect "/guest_book/#{entry.id}"
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
  @entry = Entry.find(params[:id])

  erb :show
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