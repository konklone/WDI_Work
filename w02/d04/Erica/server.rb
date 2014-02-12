require 'sinatra'
require 'sinatra/reloader'

# GET /stocks?symbol=GOOG 
#==> 845.45

get "/" do
  erb :index
end

get "/stocks/" do
end

# GET /SteveMartin

get "/:username" do 
  params[:username]  
end

# GET /?username=SteveMartin

get "/" do
  params[:username]
end


