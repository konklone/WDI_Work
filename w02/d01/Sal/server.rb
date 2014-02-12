require 'sinatra'

# get ("/") do 
# 	name = "BANANAS"
# 	"Hello World! #{name}"
# end

# get "/memories/:enjoy_weber/:name" do
# 	if params[:enjoy_weber] == "yes"
# 	 "#{params[:name]}" enjoys ALW"
# 	else
# 		"NVM"
# 	end
# end

# CREATE
# READ
# UPDATE
# DESTROY 
# Guest Book Entries

#GET /guest_book
#List all of the people who have ever registered

guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter" }

#Index

get "/guest_book" do
	names = guest_book.values.join(", ")
	"These people have registered: #{names}"
end

#show just one entry 
#we know the key (or ID)

get "/guest_book/:id" do 
	id = params[:id].to_i
	guest_book[id]

	if entry
		entry
	else
		"NONE FOUND SILLY"
	end
end


#POST /guest_book
#Create a new entry in the 'guest_book' hash
#Each entry should have a unique ID

post "/guest_book" do 
	last_id = guest_book.keys.max
	guest_book[last_id + 1] = params[:name]
end

#PUT (to update)
#Expect params[:name]name = name 
put "/guest_book/:id" do
	id = params[:id].to_i
	guest_book[id] = params[:name]
end

delete "/guest_book/:id" do
	id = params[:id].to_i
	guest_book.delete(id)
end

