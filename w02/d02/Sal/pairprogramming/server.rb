require 'sinatra'
require 'sinatra/reloader'


get ("/") do
	@header = "Do you have a test for that?"
	@yes = "/pass"
	@no = "/write_code"
	erb :two_button
end

get ("/pass") do
	@header = "Does the test pass?"
	@yes = "/refactor"
	@no = "/write_code"
	@restart = "/"
	erb :two_button
end

get ("/refactor") do
	@header = "Need to refactor?"
	@yes = "/do_refactor"
	@no = "/new_feature"
	@done = "/"
	erb :two_button
end

get ("/do_refactor") do
	@header = "Refactor the code."
	@done = "/"
	erb :one_button
end 

get ("/write_code") do
	@header = "Write just enough code for the test to pass."
	@done = "/pass"
	@restart = "/"
	erb :one_button
end 

get ("/write_test") do
	@header = "Write a test."
	@done = "/"
	@restart = "/"
	erb :two_button
end 

get ("/new_feature") do
	@header = "Select a new feature to implement."
	@done = "/"
	@restart = "/"
	erb :one_button
end

