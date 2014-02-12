require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	hostname: 'localhost',
	username: 'daviskoh',
	password: '',
	database: 'sandbox'
)

class Person < ActiveRecord::Base
end

get '/' do 
	# display all ordered by most trips -> least
	@people = Person.all

	erb :index
end

post '/:person' do 
	# button that increments trip by 1 for name
	name = params[:name]
	person = Person.where(name: name)[0]
	person.num_trips += 1
	person.save

	redirect('/')
end

