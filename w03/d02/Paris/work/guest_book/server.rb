require 'sinatra'
require "sinatra/reloader"
require 'active_record'
require 'pry'



# establishes connection with ActiveRecord
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "Paris",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry'

# Create
# Read
# Update
# Destroy
# Guest Book entries

get "/guest_book" do
  # @entries is an array
    @entries = Entry.all
  erb :index
end

# this route needs to go above the :id route

get "/guest_book/new" do

  erb :new
end

get "/guest_book/:id" do
  @entry = Entry.find(params[:id])

  erb :show
end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

# params is a Sinatra convention. Pulling/inputting comment and name out of a hash that lives in active record.
post "/guest_book" do
  # everything in the parens is one argument
  entry = Entry.new({comment: params[:comment], name: params[:name]})
  entry.save

  redirect "/guest_book/#{entry.id}"
end






