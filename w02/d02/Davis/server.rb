require 'sinatra'
require 'sinatra/reloader'
require 'erb' 
require 'pry'

# #instead of writing path ie '/folder/file' etc
# get '/profiles/:profile_name' do
# 	#take 2nd slash and put in into params hash
# 	if params[:profile_name] == "david-moyes"
# 		output_name = "Davis Moyes"
# 		output_img = "<img src='http://news.bbcimg.co.uk/media/images/67489000/jpg/_67489523_davidmoyes.jpg' />"
# 	elsif params[:profile_name] == "elvis"
		
# 	end

# 	output_string = "<!doctype html><html><head></head>"
# 	output_string += "<body><h1>#{output_name}</h1>#{output_img}
# 	<p><a href='/data/statement'>Blah BLah Blah Text afkl;afds fdsa sdf sf sdf 
# 	sdfalksfd;ldfj;djlf</a></p>"
# 	output_string += "<p><a href='/data/name'>Whats his name</a></p></body></html>"

# 	output_string
# end

# #sending data to it, getting 2nd piece of data
# get '/data/:data_point' do
# 	"You sent us a #{params[:data_point]}"
# end

# # ex check
# # statement above will register 1st
# # if put into browser localhost:4567/profiles/name
# 	# then get "You sent us a name" NOT "His name is David"
# get '/data/name' do
# 	"His name is David"
# end
# # if '/data/name' was 1st
# 	# then get "His name is David" instead






# if below not work: check directory path for server.rb
	# previously had files in reg Davis, not in sinatra-example dir
	# also, no a href in idex.html


#by convention, erb files in Sinatra belong in views dir
#move index.erb into dir views before this command

# if URL is root dir, load ERB template 'profile'
get '/' do
	erb :profile #same as erb(:index)
end

# never created personaldata a href links in origin index.html
get '/personaldata/:data_point' do

	if params[:data_point] == "name"
		erb :data
		"the data point is #{params[:data_point]}"
	else
		#not made yet
		erb :other_page
	end
end

