require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

#if the URL is the root directory, load ERB template "profile"
get( "/" ) do
  erb :profile
end

get( "/personaldata/dob" ) do

  "THE DATA+POINT IS DOB"
end











