require "sinatra"
#require "sinatra/reloader" if development?
require "sinatra/reloader"
require "erb"

get("/") do
  erb :index
end