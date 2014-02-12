require 'sinatra'
require 'sinatra/reloader'
require 'erb'



get '/multiple' do 
   @num = params[:num].to_i
  erb :multiple
end 


get '/' do 
  erb :index
end
