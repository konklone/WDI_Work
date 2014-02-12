require "sinatra"
require "sinatra/reloader"
require "pry"

get("/") do 
  "This is the output."
end