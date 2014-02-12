require "sinatra"
require "sinatra/reloader"
require "erb"
require "sinatra/cookies"

enable :sesssions
set :sessions, true

get ("/cookies") do
	response.set_cookie(:c_is_for, :value => "Cookie")
	erb :index
end

get ("/read_cookies") do
	@output = request.cookies["c_is_for"]
	erb :index
end

get ("/") do
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
	#if request.cookies["logged_in"] == "true"
		erb :super_secret
	else
		redirect "/"
	end
end
