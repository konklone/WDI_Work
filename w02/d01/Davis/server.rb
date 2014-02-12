require 'sinatra'

get("/") do
	name = "BANANAS"
	"Hello world #{name}"	
end

get("/memories/:enjoy_weber") do
	if params[:enjoy_weber] == "yes"
		"NOT A SOUND IN THE MOONLIGHT!"
	else
		"nvm"
	end
end

# create
# read
# update destroy
# guest book entries

# CRUD

guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter"}


# GET /guest_book
# List of all people who have ever registered
# "these people have registered: Jeff, PJ, Peter"

# POST /guest_book
# create a new entry in the 'guest_book' hash
# each entry should have a unique id


# index 

get "/guest_book" do 
	names = guest_book.values.join(", ")
	"These people have registered: #{names}"
end


# show (just one entry)
# i know the key / id

get "/guest_book/:id" do
	id = params[:id].to_i
	entry = guest_book[id]

	if entry
		entry
	else
		"none found silly"
	end
end

# GET /guest_book

# POST /guest_book
# create a new entry in the 'guest_book' hash
# each entry should ahve a unique id

post "/guest_book" do
	last_id = guest_book.keys.max
	guest_book[last_id + 1] = params[:name]
end


# expect parameter[:name] == new_name
put "/guest_book/:id" do
	id = params[:id].to_i
	guest_book[id] = params[:name]
end


delete "/guest_book/:id" do
	id = params[:id].to_i
	guest_book.delete(id)	
end

