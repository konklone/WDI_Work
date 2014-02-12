require "active_record"
# require "pry"
require "sinatra"
require "sinatra/reloader"




ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "rtaff2012",
	:password => "",
	:database => "sandbox"
	)

class Person < ActiveRecord::Base


end

get '/'  do 
	@people = Person.order("trips DESC")
	erb :leaderboard 
end
	
post '/:person' do
	person = Person.find_by(name:params[:person])
	person.trips += 1
	person.save 
	redirect '/'
end



# binding.pry