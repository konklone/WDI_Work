require "sinatra"
require "sinatra/reloader"
require "pry"
require "erb"


get( "/profiles/audrey-hepburn" ) do
  if params[:profile_name] == "audrey-hepburn"
  output_name = "Audrey Hepburn"
  output_image = <img src="http://25.media.tumblr.com/tumblr_m2dxr20CCe1qbilh4o1_500.jpg" width="400"/>
elsif params[:profile_name] == "elvis" 
  output_name = "Elvis Presley"
  output_image = <img src="#"/>
  "<!doctype html><html><head></head>"


output_string = "<!doctype html><html><head></head>"
output_string += "<body><h1>#{output_name}</h1>#{output_image}<p><a href=\"/data/statement\>I'm honest I have to tell you I still read fairy-tales and I like them best of all. -- <b>Audrey Hepburn</a></body></html>" 
output_string += "<p><a href=\"data/name\">what's her name?</a></p></body></html>"
#implicit return
output_string
end

get( "/data/:data_point" ) do
  "You sent us a #{params[:data_point]}"
end

get( "/data/name" ) do
    "HER NAME IS ANN"
end

get( "/" )do
erb :profile
end


#if the input is the same for these the first one will work.
# the reason we put data point here is that is hosw we're going to reference it 
# in the hash params sinatra made for us
# no more 404s!


