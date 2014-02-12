require "sinatra"
require "erb"
require "sinatra/reloader"

get "/" do 
  erb :boxes
  #typically, from your main page, you will name it -> erb :index
end

