require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'
require 'pry'

enable :sessions
set :sessions, true

get "/" do
  erb :login_form 
end

# COOKIES AND COOKIES_READER:

get "/cookies"  do 
  response.set_cookie(:c_is_for, :value => "COOKIES")
  # response.set_cookie(:c_is_for, :expires => Time.new(2020, 1, 13))
  erb :index
end

# request.params == params
get "/read_cookies" do
  @output = request.cookies["c_is_for"]
  erb :index
  end

  # CREATING A PASSWORD AND LOGIN TO PROTECT USER INFO:

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

#if/else protects info unless you're logged in. if not logged in, sends you back to "/".
get "/super_secret_info" do
  if session[:logged_in] == true
  erb :super_secret
  else
    redirect "/"
  end
end









