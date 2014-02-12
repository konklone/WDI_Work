require "sinatra"
require "sinatra/reloader"
require "pry"

# get the root route
get "/" do
  "<!doctype html><html><head></head><body>This is the output part 2</body></html>"
end