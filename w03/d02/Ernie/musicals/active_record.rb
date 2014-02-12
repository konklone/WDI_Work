require 'active_record'
require'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ecasilla",
  :password => "",
  :database => "sandbox"
  )

class Musical < ActiveRecord::Base
end

Musical.find(1)