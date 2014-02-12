# require "sinatra"
# require "sinatra/reloader"
require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :host => "localhost",
   :username => "RaleighD",
   :password => "",
   :database => "moma_db"
   )

require_relative "./models/artist"
require_relative "./models/painting"

# get "/" do 

# end

binding.pry