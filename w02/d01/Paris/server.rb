require 'sinatra'
# require 'pry'

# This is a get method takes a route(/) as a string and a block. the route is the path of our server. The last thing returned from this block is the body of the response. The below is our way of defining our route.

get "/" do
  name = "BANANAS"
  "Hello world"  
end
    
 get "/memories/:enjoy_weber/:name" do 
 #this would be a new route. this is our params (in this instance)
   if params[:enjoy_weber] == "yes"
   "#{params:name} enjoys ALW."
 else 
  "Nvm"
end
 end   

 # create
 # read
 # update
 # destroy

 # for:
 # guest book entries

 guest_book = {}

 # GET /guest_book
 # should see list of all people who have registered
 #These people have registered: Jeff, PJ, Peter

 # POST /guest_book

 guest_book = { 1 => "Jeff",  2 => "PJ", 3 => "Peter" }

 # 1. Index page

 get "/guest_book" do 
  names = guest_book.values.join(", ")
"These people have signed the guest book. #{names}"
 end

# 2. Show (just one entry) - the page of a guest_book signer
# I know the key (or the id)
# with curl use the options -X and -F. man curl will show more options in the command line
# GET /guest_book/1
# curl localhost:4567/guest_book –X POST  -F name=Jeff   

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]

if entry
  entry
else 
  "none found silly!"
end
end


# 3. POST /guest_book
#  Create a new entry in the guest_book hash
#  Each entry should have a unique id


# curl localhost:4567/guest_book –X POST  -F name=Davis
# curl localhost:4567/guest_book/4

post "/guest_book" do
  last_id = guest_book.keys.max 
  guest_book[last_id + 1] = params[:name]
end

# Expect parameter name = name
#  curl localhost:4567/guest_book/3 X PUT -F name=scaramoush

# 4. PUT

put "/guest_book/id"  do
  guest_book[params:id].to_i
  guest_book[id] = params[:name]
end


# 5. delete
#   curl localhost:4567/guest_book/ -X DELETE Peter
# should get error message on  curl localhost:4567/guest_book/3
# NONE FOUND SILLY!


delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end

   
