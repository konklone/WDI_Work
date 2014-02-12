require "sinatra"
require "sinatra/reloader"
require "pry"
require "active_record"

ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "nichol",
    password: "",
    database: "sandbox_db"
)

class Person < ActiveRecord::Base
end

get "/" do
    @all = Person.all.order("num_trips desc")
    erb :index
end

post "/:person" do
    name = params[:person]
    tripper = Person.find_by(:name => name)
    tripper.num_trips += 1

    binding.pry
    tripper.save

    redirect "/"
end

