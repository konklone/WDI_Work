require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'
require 'erb'

get "/cookies" do
  response.set_cookie(:c_is_for, :value => "COOKIE", :expires => Time.new(2020, 1, 13))
  erb :index  
end

get "/read_cookies" do
  request.params == params
    @output = request.cookies["c_is_for"] 
    # what
    erb :index
end

get "/" do
  erb :login_form 
end

post "/sessions" do
end

get "/super_secret_info" do
end


