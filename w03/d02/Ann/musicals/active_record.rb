require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ann", 
  :password => " ", 
  :database => "sandbox"
  )

#base is the core object of active record 
#:: is way to access class within record 
#active record is a RUBY module 

#name of table in the SINGULAR form 
class Musical <ActiveRecord::Base 
end 

binding.pry 

