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

class Trip <ActiveRecord::Base
end

get "/" do
@person = Trip.all.order("num_trips DESC")
erb :index
end

post "/:trip" do
person = Trip.find_by(name: params[:trip])
person.num_trips += 1
person.save
redirect '/'
end