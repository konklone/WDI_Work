require 'sinatra'
require "sinatra/reloader"
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "Paris",
password: "",
database: "sandbox"
  )

class Person < ActiveRecord::Base
end

get "/"  do  
  # desc is sql. can use sql because activerecord 'writes' sql for you. it will understand sql.
  @people = Person.order("num_trips DESC")
  erb :index
end

post "/:person" do  

  person = Person.find_by(name: params[:person])
  person.num_trips +=1
  person.save

# if using active record don't need to do any of the db_conn PG connect stuff. 

  redirect "/"
  end