require 'sinatra'

get ("/") do 
  "Hello World!"  
end

get "/roar" do
  "I am a giraffe"
end


#create
#read
#update
#destroy

#guestbook entries
# {1 => "Jeff", 2 => "PJ", 3 => "Peter"}
guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter"}

get "/guest_book" do
  names = guest_book.values.join(", ")
  "These people have registered: #{names}"
  "These people have registered: #{names}"
end

##Whatever is produced is returned in the body of the 
#request. so if there's html in there, it'll send that, too

#Show just one entry where we know the id

get "/guest_book/:id" do
  #params takes the thing after the /
  ##order = route/param
  id = params[:id].to_i
  entry = guest_book[id]

  if entry
    entry
  else
    "NONE FOUND SILLY"
  end
end

##To post in command line, do:
#curl localhost:4567/guest_book -X POST -F name=Davis

post "/guest_book" do
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]

end

#expect params[:name] == new_name
###puts can be used to change things that already exist
put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end

## curl .........../guest_book/3 -X PUT -F name=Scaramoush

delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end