require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  erb :index
end


get "/multiple" do
  @number_squares = params[:num].to_i
  erb :multiples

end
