require 'sinatra'
require "sinatra/reloader"
require "erb"
require "pry"

get("/") do
  erb :happy
end

get("/happiness/:state") do
  if params[:state] == "happy"
    @url = "//www.youtube.com/embed/uSD4vsh1zDA?rel=0&autoplay=1"
    erb :keepon  
  elsif params[:state] == "sad"
    erb :wanthappiness
  else
    @url = "//www.youtube.com/embed/gH476CxJxfg?rel=0&autoplay=1"
    erb :change
  end
end

