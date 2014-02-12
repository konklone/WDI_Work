require 'sinatra'

get("/") do
  name = "Hand...banana"
  "Hello World #{name}"
end

get "/memories" do 
  "Not a sound in the moonlight!"
end

#everything after memoir is a "user-provided" parameter
get "/memoir/:enjoy_weber" do
  if params[:enjoy_weber] == "yes"
    "PRINT THIS IF YES"
  else
    "NOTHING"
  end
end

#create, read, update and destroy guestbook entries

guestbook = {1 => "Jeff", 2 => "SwagMonster"}

#GET /guestbook -- list all people registered


get "/guestbook" do
  names = guestbook.values.join(", ")
  "These people have registered: #{names}"
end

#show (one entry) that we know the key of

# get "/guestbook/:id" do
#   name = params[:id].to_i
#   guestbook[name]
# end

get "/guestbook/:id" do
  keys = guestbook.keys
  name = params[:id].to_i
  if guestbook.keys.include?(name)
    "They've visited: #{name}"
  else
    "No entry."
end
end
#POST /guestbook -- create a new entry, each entry unique id

post "/guestbook" do
  last_id = guestbook.keys.max
  guestbook[last_id + 1] = params[:name]
end

put "/guestbook/:id" do
  id = params[:id].to_i
  guestbook[id] = params[:update]
end

delete "/guestbook/:id" do
  id = params[:id].to_i
  guestbook.delete(id)
end
