require "sinatra"
require "sinatra/reloader"
require "sinatra/cookies"

enable :sessions
set :sessions, true


# get "/" do
# 	erb :login_form
# end
get "/" do
	erb :login_form
end

# post "/sessions" do
# 	if params [:password] == "batman"
# 		session[:logged_in] = true
# 	else
# 		redirect "/super_secret"
# 	end
# end

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
		redirect "/super_secret"
	else
		redirect "/"
	end
end

get "/sessions" do
end

get "/super_secret" do
	if session[:logged_in] == true
		erb :super_secret

else 
	redirect "/"
		
end
end

