require "sinatra"
require "sinatra/reload"
require "pry"

get ('/') do
  index.html
end