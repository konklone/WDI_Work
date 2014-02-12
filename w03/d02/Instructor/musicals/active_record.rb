require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "wdi",
  :password => "",
  :database => "sandbox"
)

class Musical < ActiveRecord::Base
end

binding.pry