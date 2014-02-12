# Require sinatra framwork.  Pry debugging tool and erb
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'


# I need code that will accept a paramter from a from loop over to create multiple squares

#create root route
get "/"  do
  erb :index
  #redirect to("/multiple")
end


#create route for multiple squares
get "/multiple"  do
  @number_squares = params[:num].to_i
  erb :multiple
end
