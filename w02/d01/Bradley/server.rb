require 'sinatra'
require 'pry'

get("/") do 
  name = "Bananas"
  "Hello World #{name}"
end

get("/memories/:enjoy_weber/:name") do
  binding.pry
  if params[:enjoy_weber] == "yes"
  "NOT A SOUND IN THE MOONLIGHT!"
  else
  end
end

guest_book = { 1 => "Jeff", 2 => "PJ" }

#get /guest_book list of all people who have ever registered

#post /guest_book - create a new entry in guest_book consisting of unique id

#(1 => "Jeff", 2 => "PJ")

#index action

get "/guest_book" do
  names = guest_book.values.join(", ")
  "These people have registered: #{names}"
end

get "/guest_book/:id" do
  id = params[:id].to_i
  "Ther person corresponding to ID #{id} is  #{guest_book[id]}"
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