require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ezpawn",
  :password => "1234",
  :database => "sandbox"
  )

require_relative './models/entry'
# Create
# Read
# Update
# Destroy
# Guest Book entries

get "/guest_book/new" do
  erb :new
end



get "/guest_book" do
  @entries = Entry.all
  erb :index
end



get "/guest_book/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

# Each entry should have a unique id

post "/guest_book" do
  entry = Entry.new(comment: params[:comment], name: params[:name])
  entry.save
  redirect "/guest_book/#{entry.id}"
end

# Expect params[:name] == new_name
put "/guest_book/:id" do

end

delete "/guest_book/:id" do
 
end