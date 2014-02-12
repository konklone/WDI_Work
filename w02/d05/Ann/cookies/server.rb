require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'
require 'erb'

enable :sessions 
set :sessions, true

get "/cookies" do 
  response.set_cookie(:c_is_for, :value => "COOKIE", :expires => Time.new(2020, 1, 13))
  #Time.new sets when cookie expires 
  erb :index 
end 

get "/example_session" do 
  session[:c_is_for] = "COOKIE"
end 

get "/read_cookies" do 
  @output = request.cookies["c_is_for"] 
  #this is a cookies hash like the params hash! 
  erb :index 
end 

get "/" do 
  erb :login_form 
end 

post "/sessions" do 
  if params[:password] = "batman"
    session[:logged_in] = true 
    redirect "/super_secret_info"
  else 
    redirect "/"
  end 
end 

get "/super_secret_info" do
  if session[:logged_in] == true 
  else 
    redirect "/" 
  end 
  erb :super_secret 
end 

#how to logout
delete "/sessions" do 
end 
