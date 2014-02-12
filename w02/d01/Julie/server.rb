require 'sinatra'

# get( "/") do 
#   "Hello World!"
# end

# get "/memories/:enjoy_weber" do
#     if params[:enjoy_weber] == "yes"
#       "NOT A SOUND IN THE MOONLIGHT!"
#     else
#        "Nvm"
#    end
# end

#Create, Read, Update, Destroy Guest Book entries

guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter" }



#GET /guest_book
#List of all people who have ever registered

#{ 1 => "Jeff", 2 => "PJ", 3 => "Peter"}

get "/guest_book" do
      names = guest_book.values.join(", ")
      "These people have registered: #{names}"
end

get "/guest_book/:id" do
   id = params[:id].to_i
   guest_book[id]
end

post "/guest_book" do
 last_id = guest_book.keys.max
 guest_book[last_id + 1] = params[:name]
end

#Expect params[:name] == new_name
put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end

delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end