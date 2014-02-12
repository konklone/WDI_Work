require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do 
   erb :index
end

post "/multiple" do
      @shape = params[:shape]
      @num = params[:num]
      @color = params[:color]

      erb :shapes
end

get "/multiple" do
      erb :shapes
end