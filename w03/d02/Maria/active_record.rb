require 'active_record'
require 'pry'

# Now establish connection with active active_record
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "mariamercedesmartinez",
  :password => "",
  :database => "sandbox"
  )

#below the classes in Active record must be singular!!
#tables are always plural.
class Musical < ActiveRecord::Base
end


binding.pry