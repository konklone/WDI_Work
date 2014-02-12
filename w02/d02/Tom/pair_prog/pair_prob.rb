# Require the necessary files/frameworks
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'


# establish the root route
get "/"  do
  erb :index
end

# create a route for the yes response to the Do you have a test for that?
get "/yes" do
  erb :yes
end

    # create a route for the yes response to the Does the test pass?
    get "/pass" do
      erb :pass
    end

        # create a route for the yes response to the Do you need to refactor?
        get "/do_refactor" do
          erb :yes
        end

  # create a route for the no response to the Does the test pass?
  get "/write_code" do
    erb :write_code
  end

# create a route for the no response to the Do you have a test for that?
get "/no" do
  erb :no
end

  # create a route for the yes response to the Does the test pass?
      get "/write_test" do
        erb :write_test
      end

          # create a route for the yes response to the Do you need to refactor?
          get "/do_refactor" do
            erb :yes
          end














