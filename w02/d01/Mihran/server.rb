require 'sinatra'

# get("/") do
#   name = "BANANAS"
#   "Hello World #{name} !"
# end

# get "/memories/:enjoy_weber/:name" do 

#  if params[:enjoy_weber] == "yes"
#   "NOT A SOUND IN THE MOONLIGHT!"
#   else
#     "Nvm"
#   end
# end

guest_book = {1=> "Jeff", 2 => "PJ", 3 => "Peter"}


get "/guest_book" do
  names = guest_book.values.join (", ")
  "These people have registered: #{names}"
end

get "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id]
    if entry
    entry
  else
    "NONE FOUND SILLY!"
  end
end

post "/guest_book" do
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]
end

put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end


delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end




