require "sinatra"

get("/") do
   "Hello World!"
   "Walkaway..."
end

guest_book = {1=>"Jeff", 2=>"PJ", 3=>"Peter"}

# GET /guest_book
# List all people who have ever registered

# {1=>"Jeff", 2=>"PJ", 3=>"Peter"}

# Index
get("/guest_book") do
   names = guest_book.values.join(", ")
   "These people have registered: #{names}"
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
   guest_book[params[:id].to_i]

   if entry
      entry
   else
      "That entry does not exist!"
   end
end

# POST /guest_book
# Create a new entry in the "guest_book" hash
# Each entry should have a unique id

post "/guest_book" do
   last_id = guest_book.keys.max
   guest_book[last_id + 1] = params[:name]
end

# UPDATE /guest_book
# Expect params[:name] == new_name

put "/guest_book/:id" do
   guest_book[params[:id].to_i] = params[:name]
end

# DELETE a particular entry

delete '/guest_book/:id' do
   # id = [params[:id].to_i]
   # guest_book.delete(id)
   guest_book.delete([params[:id].to_i])
end 
