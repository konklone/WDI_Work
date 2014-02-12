require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
        :adapter => "postgresql",
        :host => "localhost",
        :username => "nichol",
        :password => "",
        :database => "sandbox_db"
    )

class Musical < ActiveRecord::Base

end

binding.pry


#sunday.save
