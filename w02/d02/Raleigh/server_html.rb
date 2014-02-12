require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

get ("/profiles/:name") do
   if params[:name] == "captain-america"
   output_name = "Captain America"
   output_string = "<!doctype html><html><head></head><body><h1>#{output_name}</h1></body></html>"
   elsif params[:name] == "batman"
   output_name = "Batman"
   output_string = "<!doctype html><html><head></head><body><h1>#{output_name}</h1></body></html>"
   end
end

get ("/") do
   erb :index
end
