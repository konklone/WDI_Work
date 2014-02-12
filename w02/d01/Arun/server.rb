require 'sinatra'

get "/" do 
	"Hello World"
end

get "/memories/:enjoy_weber" do
	if params[:enjoy_weber] == "yes"
		"NOT A SOUND IN THE MOONLIGHT!"
	else 
		"nvm"
		
	end
end

# Create 
# Update
# Read
# Destroy
# Guest book entries

guest_book = {}

#GET /guest_book
#=> List of all people who have ever registered in guest book.
# POST /guestbook - Create a new entry in the 'guest_book' hash
#Each entry should have a unique id#

# {1 => "Jeff, 2 => "PJ", 3 => "Peter"}

# Index
get "/guest_book" do
	names = guest_book.values.join(", ")
	"<h1>These poeple have registered #{names}</h1>"
end

#show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
	id = params[:id].to_i
	entry = guest_book[id]
	if entry 
		entry
	else 
		"none found"
	end

	end
# GET /guest_book/1
#######################################################


# Post /guest_book
# post is used to provide the server w/ information we expect it to store

post "/guest_book" do
		last_id = guest_book.keys.max
		guest_book[last_id + 1] = params[:name]
	end
#########################################################
# Put request will update information
# Expect parameter name = name ------ Expect params[:name] == new_name
put "/guest_book/:id" do
	id = params[:id].to_i
	guest_book[id] = params[:name]
	end
# Delete will destroy information from server.
delete "/guest_book/:id" do
		id = params[:id].to_i
		guest_book.delete(id)
	end
