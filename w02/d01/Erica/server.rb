require 'sinatra'
require 'pry'

get "/" do
  name = "BANANAS"
  "Hello World #{name}"
end

get "/memories/:enjoy_weber/:name" do
  if params[:enjoy_weber] == "yes" 
    "#{params[:name]} enjoys ALW."
  else
    "Nvm"
  end
end

# Create
# Read
# Update
# Destroy
# Guest Book entries

guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# GET /guest_book 
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

# { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# Index

get "/guest_book" do
  names = guest_book.values.join(", ") #.values returns an array, we want to return a string so we put .join
  "These people have registered: #{names}"
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do #params is whatever they provide in that spot 
  id =  [params[:id].to_i] 
  guest_book[id]
  end
binding.pry # allows you to debug the program and find your error

post "/guest_book" do 
  last_id = guest_book.keys.max
  guest_book[last_id +1] = params[:name]
end
# the guest book is a hash data structure. 

# Expect params[:name] == new_name
put "/guest_book/:id" do # sets up a route in sinatra
  guest_book[id] = params[name] ## why is it going into params
end
# I want to update the guestbook at this particular I.D

delete "/guest_book/:id" do 
 id = params[:id].to_i
 guest_book.delete(id)
end
