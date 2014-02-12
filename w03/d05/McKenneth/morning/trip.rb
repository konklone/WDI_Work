require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "macadocious",
password: "",
database: "sandbox"
)

class Trip < ActiveRecord::Base
end

get("/") do 
  @people = Trip.all 
  erb :index
end

post("/:person") do 
  
  tripper = Trip.find_by(id: params[:person].to_i)
  tripper.num_trips += 1
  tripper.save

  redirect("/")
end