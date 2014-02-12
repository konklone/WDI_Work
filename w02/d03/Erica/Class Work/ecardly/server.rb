require "sinatra"
require "sinatra/reloader" if development?
require "erb"

get("/") do
  erb :index
end

