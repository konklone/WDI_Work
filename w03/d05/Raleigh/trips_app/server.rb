### Tripp'd Up ###

require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pry"


ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :host => "localhost",
   :username => "RaleighD",
   :password => "",
   :database => "sandbox"
)

class Person < ActiveRecord::Base
end

# binding.pry

get "/" do
   @people = Person.all.order("num_trips DESC")
   erb :index
end

post "/:person" do
   person = Person.find_by(name: params[:person])
   person.num_trips += 1
   person.save

   # case (params[:person]).downcase
   # when "pj" then
   #    pj = Person.find_by(name: "PJ")
   #    pj.num_trips += 1
   #    pj.save
   # when "jeff" then
   #    jeff = Person.find_by(name: "Jeff")
   #    jeff.num_trips += 1
   #    jeff.save
   # when "peter" then
   #    peter = Person.find_by(name: "Peter")
   #    peter.num_trips += 1
   #    peter.save
   # end

   redirect "/"
end

# * GET '/' (Displays all 3 people and the number of trips for each. People should be ordered by most trips to least trips. Next to each person there is an "HAHA Tripped!" button which increments the number of trips for that person)
