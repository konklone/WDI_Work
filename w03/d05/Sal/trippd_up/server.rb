require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql", 
	:host => "localhost", 
	:username => "sal", 
	:password => "", 
	:database => "sandbox"
)

class Person < ActiveRecord::Base
end

get '/' do 
	@people = Person.order("num_trips DESC")
	erb :index	
end

post '/:person' do
	person = Person.find_by(name: params[:person])
	person.num_trips += 1
	person.save
	redirect '/'
end

# binding.pry

