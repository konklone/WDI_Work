require 'active_record'
require 'pry'


#  This establishes a connection.  Base is the core object (module) within ActiveRecord
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "thomasbrennan",
    :password => "",
    :database => "sandbox"
  )

# use the singular of the table name and inherit from ActiveRecord Base
class Musical < ActiveRecord::Base
end


puts Musical.find(1)

binding.pry