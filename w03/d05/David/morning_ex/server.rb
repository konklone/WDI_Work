require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "DtotheFP",
  password: "",
  database: "sandbox"
)

class Person < ActiveRecord::Base

end

get "/" do
  @people = Person.all.order("num_trips DESC")
  erb :index
end

post "/:person" do
  person = Person.find_by(name: params[:person])
  binding.pry
  person.num_trips += 1
  person.save

  redirect "/"
end

# binding.pry