require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
  
end

get '/multiple' do
  @amount = params[:quantity].to_i
  @shape = params[:shape]
  erb :multiples
end