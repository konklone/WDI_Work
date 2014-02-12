require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

#if the URL is the root directory, load ERB template "profile"

get "/" do
    @header = "Do you have a test for that?"
    @yes = "/pass"
    @no = "/write_test" 
    erb :pair_programming
end

get( "/pass") do  
     @header = "Does the test pass?!"
     @yes= "/refactor" 
     @no = "/write_code" 
    erb :pass
end

get( "/refactor") do  
     @header = "Need to refactor?"
     @yes= "/do_refactor" 
     @no = "/new_feature" 
    erb :pass
end

get( "/do_refactor" ) do
    @header = "Refactor the code."
     @done = "/"
    erb :do_refactor 
end

get( "/write_code" ) do
     @header = "Write just enough code for the test to pass!"
     @done = "/" 
    erb :write_code 
end

get( "/write_test" ) do
     @header = "Write a test."
     @done = "/" 
    erb :write_code 
end

get( "/new_feature" ) do
     @header = "Select a new feature to implement!"
     @continue= "/" 
    erb :new_feature
end
  
# get "/page1" do
#     @header = "Header for page 1"
#     @yes = "/views/do_refactor"
# erb :page
# end

# get "/page2" do
#     @header = "Header for page 2"
# erb :page
# end

# @header
# @yes
# @no
# @image

# stick these in the html

# @pair_programming = "/"
# @header = "Paris"


















