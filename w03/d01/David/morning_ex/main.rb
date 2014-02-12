require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  erb :index
end

get "/multiple" do
  @number_sq = params[:square].to_i
  @number_ci = params[:circle].to_i
  erb :multiple
end

