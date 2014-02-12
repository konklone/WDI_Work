require 'active_record'
require 'sinatra/reloader'
require 'sinatra'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host:     'localhost',
  username: 'ecasilla',
  password: '',
  database: 'sandbox'
  )


class Person < ActiveRecord::Base
end

get '/' do
  @people = Person.order("num_trips DESC")
  erb :leaderboard
end

post'/:person'do
  person = person.find_by(name: params[:person])
  person.num_trips +=1
  person.save
  redirect '/'
end
