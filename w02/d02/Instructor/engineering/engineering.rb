require 'sinatra'

get '/' do
  @direction = "Does it move?"
  @yes = '/shouldmove'
  @no = '/shouldntmove'
  erb :decision
end

get '/shouldmove' do
  @direction = "Should it?"
  @yes = "/noproblem"
  @no = "/wd40"
  erb :decision
end

get '/shouldntmove' do
  @direction = "Should it?"
  @yes = "/ducttape"
  @no = "/noproblem"
  erb :decision
end

get '/wd40' do
  @direction = "WD40 it"
  @done = "/"
  erb :done
end

get '/ducttape' do
  @direction = "You should get some duct tape"
  @done = "/"
  erb :done
end

get '/noproblem' do
  @direction = "NO PROBLEMO"
  @done = "/"
  erb :done
end