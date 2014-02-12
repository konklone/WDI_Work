require 'sinatra'

#our way of defining the root (/) route:
get "/" do
"hello world" 
end

get "/memories" do
  "Not a sound in the moonlight"
end

#guest_book = {}
#GET /guest_book
#List of all peopkeeho have ever registered

#PST /guest_book#create a re entry inthe "guest_book" hash
#each ebtry shoutd have a unique id
# {1=> "Jeff, 2=> "PJ, 3 => "Peter"

#Index
guest_book = {1=> "Jeff", 2=> "PJ", 3 => "Peter"}

get "/guest_book" do
names = guest_book.values.join(", ")
"These folks have registered: #{names}"
end

get "/guest_book/:id" do
  id = params[:id].to_i    #this = guest_book/blabla  the params id will = blabala
  #guest_book[id]
  entry = guest_book[id]
    if entry
      entry
    else
      "None found"
    end
end

post "/guest_book" do
last_id = guest_book.keys.max
guest_book[last_id + 1] = params[:name]
end
#expect params[:name] = new_name
put "/guest_book/:id" do
  id  = params[:id].to_i
  guest_book[id] = params[:name]
end

delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end















