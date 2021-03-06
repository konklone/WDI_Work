require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'

enable :sessions
set :sessions, true

get "/cookies" do
  response.set_cookie(:c_is_for, :value => "COOKIE", :expires => Time.new(2020, 1, 12))
  erb :index
end

#there is a cookies hash called request.cookies
get "/read_cookies" do
  @output = request.cookies[:c_is_for.to_s]
  erb :index
end

get "/" do
  erb :login_form
end

post "/sessions" do
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