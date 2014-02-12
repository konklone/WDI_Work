require "sinatra"
require "sinatra/reloader"
require "erb"


get ( "/") do
	@question = "Does it move?"
	@yes = "/move_yes"
	@no = "/move_no"
	erb :buttons
end
get ( "/move_yes" ) do
	@question = "Should it move?"
	@yes = "/should_yes"
	@no = "/should_no"
	erb :buttons
end
get ( "/move_no" ) do
	@question = "Should it move?"
	@yes = "/maybe_yes"	
	@no = "/maybe_no"
	erb :buttons
end
get ( "/maybe_yes") do
	@display = "no problem"
	erb :results
end
get ( "/maybe_no" ) do
	@display = "duct tape"
	erb :results
end
get ( "should_yes") do
	@display = "no problem"
	erb :results
end
get ( "should_no") do
	@display = "wd-40"
	erb :results
end



