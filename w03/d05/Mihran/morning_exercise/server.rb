require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'erb'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "MihranAbrahamian",
  password: "",
  database: "sandbox"
)

class Person < ActiveRecord::Base
end

# binding.pry

get '/' do
    @all_people = Person.order("num_trips DESC")

  erb :display_all

end

post '/:person' do
  person = Person.find_by(name: params[:person])
  person.num_trip += 1
  person.save
  redirect "/"
end
