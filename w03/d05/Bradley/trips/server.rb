require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "bradpuder",
  :password => "",
  :database => "sandbox"
)

class Person < ActiveRecord::Base
end

get '/' do
  @people = Person.all.order("num_trips DESC")
  erb :index
end


post '/:person' do
  name = Person.find_by(name: params[:person])
  name.num_trips += 1
  name.save
  redirect '/'
end