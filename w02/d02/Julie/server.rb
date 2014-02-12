require "sinatra"
require "sinatra/reloader"
require "pry"
require "erb"

get( "/" ) do
  @text = 'Do you have a test for that?'
  @link_yes = "/pass"
  @link_no = "/write_code"
  erb :yes_no
end

get("/pass") do
  @text = "Does the test pass?"
  @link_yes = "/refactor"
  @link_no = "/write_code"
  erb :yes_no
end

get("/refactor") do
  @text = "Do you need to refactor?"
  @link_yes = "/do_refactor"
  @link_no = "/new_feature"
  erb :yes_no
end

get("/write_code")do
  @text = "Write just enough code for the test to pass."
  erb :single_button
end

get("/do_refactor")do
  @text = "Refactor."
  erb :single_button
end

get("/new_feature")do
  @text = "Select new feature to implement."
  erb :single_button
end