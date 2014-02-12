# 1 question page w/ change q & 2 click option
# 1 back-track page w/ change statement & 1 click option

require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
  @statement = "Do you have a test for that?"
  @link_url1 = "yes"
  @link_url2 = "no"

  erb :choice
end

get '/:answer' do
  if params[:answer] == 'yes'
    @statement = "Does the test pass?"
    @link_url1 = "yes/yes"
    @link_url2 = "yes/no"
    
    erb :choice
  else
    @statement = "Write a test."
    @link_url = "/"

    erb :dead
  end
end

get '/yes/:answer' do
  if params[:answer] == 'yes'
    @statement = "Need to Refactor?"
    @link_url1 = "yes/yes"
    @link_url2 = "yes/no"

    erb :choice
  else
    @statement = "Write just enough code for the test to pass."
    @link_url = "/"

    erb :dead
  end
end

get '/yes/yes/:answer' do
  if params[:answer] == 'yes'
    @statement = "Refactor the Code"
    @link_url = "/"

    erb :dead
  else
    @statement = "Select a new feature to implement"
    @link_url = "/"

    erb :dead
  end
end
