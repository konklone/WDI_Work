require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

#if the URL is the root directory, load ERB template "profile"
get( "/" ) do
  erb :profile
end

get( "/personaldata/:data_point" ) do

  if params[:data_point] == "name"
    @link_url = "http://www.google.com/?q=ann+margret"
    erb( :data )
  else
    @link_url = "/"
    erb( :data )
  end

  #binding.pry
end











