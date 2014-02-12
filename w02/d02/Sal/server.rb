require "sinatra"
require "sinatra/reloader"
require "pry"

get( "/profiles/:profile_name" ) do
  if params[:profile_name] == "ann-margret"
    output_name = "Ann Margret"
    output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"
  elsif params[:profile_name] == "elvis"
    output_name = "Elvis Presley"
    output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"
  end

  output_string = "<!doctype html><html><head></head>"
  output_string += "<body><h1>#{output_name}</h1>#{output_img}<p><a href=\"data/statement\">The critics had an image of me</a></p></body></html>"
  output_string += <p style=\"margin-bottom: 200px\"><a href=\"/data/name|\">
  # implicit return
  output_string
end

get ("/data/:data_point") do
	"You sent us a #{params[:data_point]}"
end

get ("/data/name") do 
	"HER NAME IS ANN!"
end

get ("/") do 
	erb: profile
end

