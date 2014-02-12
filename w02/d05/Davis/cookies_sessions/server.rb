require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'
require 'erb'

enable(:sessions)
set(:sessions, true)

get '/cookies' do 
	# in response that about to send back to client
	# set cookie w/ key/value
	response.set_cookie(:c_is_for, :value => "COOKIE")
	erb :index
end 

get '/read_cookies' do 
	# retrieve from cookie hash
	# NOTE: key for the cookie hash is a string unlike params
	@output = request.cookies["c_is_for"]
	erb :index
end

get '/' do 
	erb :login_form
end

# post = creating something on server
# creating new login session for user
post '/sessions' do 
	if params[:password] == 'batman'
		session[:logged_in] = true
		# for better UX, send to page they want to go to
		redirect "/super_secret_info"
	else
		redirect "/"
	end
end

# to "log-out" would be to delete '/sessions'

get '/super_secret_info' do
	if session[:logged_in] == true
		erb :super_secret
	else
		redirect "/"
	end
end

