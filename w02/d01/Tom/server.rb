require 'sinatra'
require 'pry'

# This is the "root" route
get "/" do
  #{}"Hello World, here I am!"
end

# # This is a new route called memories "root"/memories
# get "/memories/:enjoy_weber" do
# # This will pass whatever is input.  Yes will return the string, anything else will return "Nvm"
#   if params[:enjoy_weber] == "yes"
#     "Not a sound in the moonlight"
#   else
#     "Nvm"
#   end
# end

#  Create, Read, Update and Destroy Guest Book entries.  A CRUD App
guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter"}

# GET /guest_book
# List of all people who have ever registered

# POST /guest_book
# Create a new entry in the 'guest_book' hash
# Each enrty should have a uniue ID


# Index
get "/guest_book" do
  # .values returns an array, then join seperates the items of the array with commas
  names = guest_book.values.join(", ")
  "These people have registered: #{names}"
end

# Show (just one entry)
# I know the key or id
# Get - Gets info lets you "read it"
get "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id]
end


# POST guest_book.. As an example a web form will make a post request.
# by default requests are GET
# Post - Creates a new entry in the guest_book hash
# Each entry should have a unique ID
post "/guest_book" do
  # this gets you a new unique id as a key, by addind 1 to the max key of the hash
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]
end



# Put - Replaces a current value
# Expect parameter name=name.  params[:name] == new_name
put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end

# Delete - Destroys info from your stored data
delete "guest_book/:id" do
  id = params[:id].to_i
  guest_book[id].delete(params[:id])
end











