require 'sinatra'
require 'sinatra/reloader'


get '/' do
erb :index  
end



get '/mutiple' do 
 @num_squares = params[:num].to_i
  erb :multiple
end