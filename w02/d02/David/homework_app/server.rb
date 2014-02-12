require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  @header = "Do you have a test for that?"
  @link_yes = "/test_pass"
  @link_no = "/write_test"
  erb :index
end

#yes from index
get "/test_pass" do
  @header = "Does the test pass?"
  @link_yes = "/refactor"
  @link_no = "/write_code"
  erb :twobtn
end

#no from index
get "/write_test" do
  @header = "Write a test."
  @link = "/test_pass"
  @btntext = "Continue"
  erb :onebtn
end

#yes from /test_pass
get "/refactor" do
  @header = "Need to Refactor?"
  @link_yes = "/do_refactor"
  @link_no = "/new_feature"
  erb :twobtn
end

#no from /test_pass
get "/write_code" do
  @header = "Write just enough code for the test to pass."
  @link = "/test_pass"
  @btntext = "Done"
  erb :onebtn
end

#yes from refactor
get "/do_refactor" do
  @header = "Refactor the code."
  @link = "/test_pass"
  @btntext = "Done"
  erb :onebtn
end

#no from refactor
get "/new_feature" do
  @header = "Select a new feature to implement."
  @link = "/"
  @btntext = "Continue"
  erb :onebtn
end








