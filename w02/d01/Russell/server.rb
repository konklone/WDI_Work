require "sinatra"
require "pry"
#this is a method; takes a root as a string and a block


# get  "/" do 
# 	name = "Bananas"
# "Hello World #{name}"
	
# end

# get "/memories/:enjoy_weber/:name" do
# 	binding.pry
# 	if params[:enjoy_weber] == "yes"
# 	"#{"Not a sound in the moonlight!"}"
# 	else
# 	"nvm"
# 	end
# end
#our parameters end up being stored; sinatra parses the URL and creates 
#access with the key that we've specified so that we can go ahead and access the value we've provided using the params hash

#=> curl localhost:4567/memories/yes
#=> curl localhost:4567/memories/No


# creates
# read
# update
# destroy
# Guest book entries

guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }
# GET / guest_book
# => list of all people who have ever registered in my guest_book
# "These people have registered: Jeff, PJ, Peter. "

# POST / guest_book
#=> create a new entry in the guest_book hash
#each entry should have a unique ID 

# 
# Index 

get "/guest_book" do
	names = guest_book.values.join(", ")
#.values returns an array, we want to return a string so we put .join
"These people have registered: #{names}"

end


#show (just one entry)
# i know the key (or ID)

get "/guest_book/:id" do
  #params takes the thing after the /
  ##order = route/param
  id = params[:id].to_i
entry = guest_book[:id]

if entry
	entry
else
	"NONE FOUND SILLY"
end 

end

#/guest_book/199

post "/guest_book" do
	binding.pry
end

post "/guest_book" do
	last_id = guest_book.keys.max
	guest_book[last_id + 1] = params[:name]
end

#expect parameter name=name ( params[:name] = new_name)
put "/guest_book/:id" do
id = params[:id].to_i
guest_book[id] = params[:name]
end

delete "/guest_book/:id" do
id = params[:id].to_i
guest_book.delete(id)
	end




