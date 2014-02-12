require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	adapter: "postgresql",
	host: "localhost",
	username: "postgres",
	password: "postgres",
	database: "sandbox"
	)

# ActiveRecord::Base.establish_connection(
# 	:adapter => "postgresql",
# 	:host => "localhost",
# 	:username => "postgres",
# 	:password => "postgres",
# 	:database => "sandbox"
# 	)

class Trip < ActiveRecord::Base
end

# binding.pry


# * GET '/' (Displays all 3 people and the number of trips for each. People should be ordered by most trips to least trips. Next to each person there is an "HAHA Tripped!" button which increments the number of trips for that person)

get '/' do
	@people = Trip.order("num_trips DESC")
	erb :index
end

# * POST '/:person' (Increments the number of trips for the person, saves it to the database, and redirects to '/')

post '/:person' do
	person = Trip.find_by(name: params[:person])
	person.num_trips += 1
	person.save
	redirect '/'
end