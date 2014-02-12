require 'sinatra'
require 'sinatra/reloader'


get "/" do
@title = "Do you have a test for that?"
@yes = "/pass"
@no = "/write_test"
erb :two_buttons
end

get "/pass" do
@title = "Does the test pass?"
@yes = "/refactor"
@no = "/write_test"
erb :two_buttons
end

get "/write_test" do
@title = "Write a test"
@done = "/pass"
erb :one_button
end

get "/refactor" do
@title = "Need to refactor?"
@yes = "/do_refactor"
@no = "/new_feature"
erb :two_buttons
end 

get "/do_refactor" do
@title = "Refactor the code"
@done = "/pass"
erb :one_button
end

get "/new_feature" do
@title = "Select a new feature to implement."
@done = "/index"
erb :one_button
end