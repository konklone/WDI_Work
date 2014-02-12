require 'sintra
require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new('./sql.log')

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "evobersi",
  password: "",
  database: "sandbox"
)

class Person < ActiveRecord::Base
end

binding.pry