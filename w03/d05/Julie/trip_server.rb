# Expand on your server.rb file to make it a Sinatra App. Your Sinatra app should respond to the follow requests:

# GET '/' (Displays all 3 people and the number of trips for each. People should be ordered by most trips to least trips. Next to each person there is an "HAHA Tripped!" button which increments the number of trips for that person)
# POST '/:person' (Increments the number of trips for the person, saves it to the database, and redirects to '/')




require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "Julie",
    :password => "",
    :database => "sandbox"
    )


#AR reads the class name and pluralizes it, downcases it and searches for a #table     
class Trip < ActiveRecord::Base

end

get '/' do
  @people = Trip.order("num_trips DESC")
erb :index
end

post '/:person' do
 person = Trip.find_by(name: params[:person])
 person.num_trips += 1 
 person.save
 redirect ('/')
end


# pj[:num_trips]
