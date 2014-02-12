require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get "/" do  
  erb :index 
  end 

  get "/multiple" do 
    @number_squares = params[:num].to_i 
    erb :multiple 
  end 

  # post "/multiple" do 
    
  #   erb :form
  # end 