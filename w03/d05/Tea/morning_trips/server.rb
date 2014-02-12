require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "T-Virus",
  password: "",
  database: "sandbox"
)

class Person < ActiveRecord::Base
end

get '/' do

  @people = Person.all.order("num_trips DESC")
  erb :leaderboard
end

post '/:person' do
  person = Person.find_by(name: params[:person])
  person.num_trips += 1
  person.save
  redirect '/'
end