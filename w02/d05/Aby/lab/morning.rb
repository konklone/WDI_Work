require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :
end

get '/multiple' do
  erb :form
end