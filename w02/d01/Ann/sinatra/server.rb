require 'sinatra'
require 'pry'

#curl -v 127.0.0.1:4567
#OR can use: 
#curl -v localhost:4567

# get "/" do 
#   name = "bananas"
#   "Hello World #{name}."
# end
#Get is a METHOD. This is our way of defining our root route. 

# get "/memories/:enjoy_weber/:name" do 
#   if params[:enjoy_weber] == "yes"
#   #{}"NOT A SOUND IN THE MOONLIGHT!"
#   "#{params[:name]} enjoys ALW."
#   else 
#   "nvm"
#   end 
# end 
#curl -v localhost:4567/memories
#Everything after memories is dynamics (determined by user). 

######################WEB APP############################
#Create (http verb POST)
#Read (http verb GET)
#Update
#Destory 
#Guest Book Entries 

guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter"}

#GET /guest_book
#List of all people who have ever registered. 
#These people have registered: Jeff, PJ, Peter. 
#getting info 

# {1 => "Jeff", 2 => "PJ", 3 => "Peter"}

#Index 

get "/guest_book" do 
  names = guest_book.values.join(", ")
  "These people have registered #{names}."
end 

#TO CREATE A NAME 
#Show (just one entry)
# I know the key (or the id)
get "/guest_book/:id" do 
  id = params[:id].to_i 
  entry = guest_book[id]
  if entry 
    entry 
  else 
    "NONE FOUND SILLY!"
  end 

end 

#sinatra matching http verb and then param

#POST /guest_book
  #creating a resource on the server to store when you're using this verb 
#Create new entry in the 'guest_book' hash
#Each entry should have a unique id 

#TO CREATE A NAME 
post "/guest_book" do 
  last_id = guest_book.keys.max 
  guest_book[last_id + 1] = params[:name]
end 
#[:name] here is a special type of hash that doesn't differiate between symbols and strings
#to add to guestbook in terminal: localhost:4567/guest_book -X POST -F name=Davis 

#TO UPDATE A UNIQUE ID WITH A NAME  
#Expect parameter name=name params[:name] == new_name 
put "/guest_book/:id" do 
  guest_book[params[:id]].to_i
  guest_book[id] = params[:name]
end 
#type into command line --> curl localhost:4567/guest_book/3 -X PUT -F name=Moush
#will change the name 
#PUT updates 

#TO DELETE A NAME 
delete "/guest_book:id" do 
 params[:id].to_i
  guest_book.delete[id]
end 

#type into terminal curl localhost:4567/guest_book/3 -X DELETE Peter 
