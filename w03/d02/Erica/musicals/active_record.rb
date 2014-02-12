require 'active_record'
require 'pry'

#Base is like the core object within ActiveRecord module.
# :: is a way to access the Class within the Module.
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", # we could use Oracle if we wanted to 
  :host => "localhost",
  :username => "evobersi",
  :password => "",
  :database => "sandbox"
)

#ActiveRecord has a slightly different convention than the crude_ar 
# we created earlier. 
# Requires the name of the table in singular form.
class Musical < ActiveRecord::Base
end

binding.pry
