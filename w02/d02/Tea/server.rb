require "sinatra"
require "sinatra/reloader"
require 'erb'
require "pry"

get '/' do   
  "lala"
  @question = "Don't you want somebody to love?"
  @yes = "need"
  erb :y_n
end

get '/need' do   
  @question = "Don't you need somebody to love?"
  @yes = "love"
  erb :y_n
end

get '/love' do  
  @question = "Wouldn't you love somebody to love?" 
  @yes = "find"
  erb :y_n
end

get '/find' do  
  @question = "You better find somebody to love!" 

  erb :done
end

get '/notfind' do   
  @question = "You better not find somebody to love!"
  erb :done
end

get '/done' do
  @question = "Sing it, baby!"
  erb :done
end