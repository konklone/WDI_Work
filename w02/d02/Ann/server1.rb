# require "sinatra"
# require "sinatra/reloader"
# require "pry"

# get( "/profiles/ann-margret" ) do
#   output_name = "Ann Margret"
#   output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"

#   output_string = "<!doctype html><html><head></head>"
#   output_string += "<body><h1>#{output_name}</h1>#{output_img}</body></html>"
# end

require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'erb'

get( "/profiles/:profile_name" ) do
  if params[:profile_name] == "ann-margret"
    output_name = "Ann Margret"
    output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"
  elsif params[:profile_name] == "elvis"
    output_name = "Elvis Presley"
    output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"
  end

  output_string = "<!doctype html><html><head></head>"
  output_string += "<body><h1>#{output_name}</h1>#{output_img}</body></html>"

  # implicit return
  output_string = "<doctype html><html><head></head>"
  output_string += "<body><h1> #{output_name}</h1> #{output_img}"

  get( "/data/name" ) do 
    "HER NAME IS ANN!"
  end 

  
 







