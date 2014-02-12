require "sinatra"
require 'sinatra/reloader'
require 'erb'
require 'pry'


# get the root route
get "/"  do
  erb: profile  #this is a file "profile.erb" that should be in a sub folder "views"
end

get "/profiles/steve-mcqueen" do
  output_name = "Steve McQueen"
  output.img = "http://nygumbo.files.wordpress.com/2008/03/img_4.jpg"
end