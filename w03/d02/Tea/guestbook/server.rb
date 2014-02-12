require 'sinatra'
require 'active_record'
require 'pry'
require 'sinatra/reloader'
 
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "T-Virus",
  :password => "",
  :database => "sandbox"
)

require_relative './models/entry'
 
get "/guest_book" do
  # accessing information through acessing model Entry that we linked to
  # via require relative
  # gives as array
  @entries = Entry.all

  erb :index
end

get "/guest_book/new" do
  erb :new
end

 
# Show (just one entry)
get "/guest_book/:id" do
  @entry = Entry.find(params[:id])

  erb :show
end
 
# GET /guest_book/1
 
# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id
 
post "/guest_book" do
  #The ActiveRecord way
  entry = Entry.new(comment: params[:comment], name: params[:name])
  # entry.persisted?
  # => false
  entry.save
  # entry.persisted?
  # => true
  redirect "/guest_book/#{entry.id}"
  
end
 
# Expect params[:name] == new_name
put "/guest_book/:id" do

end
 
delete "/guest_book/:id" do
  
end