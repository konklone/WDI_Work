require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'

enable :sessions

set :sessions, true

get "/cookies" do
  response.set_cookie(:c_is_for, :value => "COOKIE")
  erb :index
end 

get "/read_cookies" do
  @output = response.get_cookie[":c_is_for"]
  erb :index
end

get "/" do
  erb :login_form
end

post "/sessions" do #have user creat session
  if params[:password] == "batman"
    session[:logged_in] = true
    redirect "/super_secret_info"
  else
  redirect "/"
  end
end

get "/super_secret_info" do
  if session[:logged_in] == true
  erb :super_secret
  else 
    redirect "/"
  end
end
# To end session would be using a delete verb with 
# resource being /sessions route?
