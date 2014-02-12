require 'sinatra'
require 'pry'

get ("/") do 
  "Hello World"
end

get ("/memories/:enjoy_weber/:name") do
  if params[:enjoy_weber] == "yes"
  "NOT A SOUND IN THE MOONLIGHT"
  else
    "NvM"
  end
end

# Create - http: verb - POST
# Read - http: verb - GET
# Update
# Destroy
# Guest Book Entries

guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter"}

# GET /guest_book
# List of all people who have ever registered

#POST /guest_book
#Create a new entry in the 'guest_book' hash
#Each entry should have a uniqure ID

# {1 => "Jeff", 2 => "PJ", 3 => "Peter"}

# Index 

get "/guest_book" do

  names = guest_book.values.join(", ")
  "<h1>These people have registered: #{names}</h1>"

end

get "/guest_book/:id" do

  id = params[:id].to_i
  guest_book[id]
  entry = guest_book[id]

  if entry
    entry
  else
    "none found silly"
  end

end


post "/guest_book" do
  last_id = guest_book.keys.max 
  guest_book[last_id + 1] = params[:name]
end

#expect parameter name = name
put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end

delete "/guest_book/:id" do

  id = params[:id].to_i
  guest_book.delete(id)

end






