require 'sinatra'
require 'active_record'
require 'sinatra/reloader'
# require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "rtaff2012",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry'

# 
# Create
# Read
# Update
# Destroy
# Guest Book entries

# guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# GET /guest_book
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"

# { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# Index

#this is a controller. it receives event information from our views; an example is a form; 
#when a user submits a form, a user has triggered an event
get "/guest_book/?" do
@entries = Entry.all 



  erb :index

end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id/" do

@entry = Entry.find(params[:id])

erb :show

end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

get "/guest_book/new" do
  # params[:comment]
  # params[:name]
  # last_id = guest_book.keys.max
  # guest_book[last_id + 1] = params[:name]
  erb :new
end

post "/guest_book" do
  entry = Entry.new({comment: params[:comment], name: params[:name]})

  entry.save

redirect "/guest_book/#{entry.id}"

end

put "/guest_book/:id" do
  end



# # Expect params[:name] == new_name
# put "/guest_book/:id" do
# #   @entry = Entry.find(params[:id])
#   # id = params[:id].to_i
#   # guest_book[id] = params[:name]
# end

# delete "/guest_book/:id" do
#   # id = params[:id].to_i
#   # guest_book.delete(id)
# end