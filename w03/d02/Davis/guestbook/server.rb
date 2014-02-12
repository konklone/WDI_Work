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
  @entries = Entry.all # aka SELECT * FROM in sql

  # index used to show all resource
  # show will be used for singular
  erb :index
end

# put above /:id
  # specify that its not param
get '/guest_book/new' do 
  erb :new
end

get "/guest_book/:id" do
  @entry = Entry.find(params[:id]) #SELECT * FROM entries where id = params[:id]

  erb :show
end
 
# GET /guest_book/1
 
# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id
 
post "/guest_book" do
                    # implicit hash {name: params[:name], etc}
  entry = Entry.new(name: params[:name], comment: params[:comment])

  entry.save

  redirect("/guest_book/#{entry.id}")
end
 
# Expect params[:name] == new_name
put "/guest_book/:id" do
  
end
 
delete "/guest_book/:id" do
  
end