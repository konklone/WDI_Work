require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'
require 'erb'
require 'pry'

enable :sessions
set :sessions, true


get "/" do
  erb :login_form
end

get "/cookies" do
  response.set_cookie(:c_is_for, :value => "COOKIE")
  erb :index
end

get "/read_cookies" do
  @output = request.cookies[":c_is_for"]
  erb :index
end

post "/sessions" do
  if params[:password] == "batman"
    session[:logged_in] = true
    redirect "/super_secret_info"
  else
    redirect "/"
  end
end

# log out
delete "/sessions" do
end

get "/super_secret_info" do
  if session[:logged_in] == true
  erb :super_secret
    elsif
      redirect "/"
  end
end