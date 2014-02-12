require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'


# establish the connection to the database through ActiveRecord
ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:host => 'localhost',
:username => 'thomasbrennan',
:password => '',
:database => 'sandbox'
)


class Person < ActiveRecord::Base
end

# using active record directly
get "/" do
  @people = Person.all.order("num_trips DESC")
  erb :index
end

post "/:person" do
   person = Person.find_by(name: params[:person])
   person.num_trips += 1
   person.save
   redirect '/'
end

