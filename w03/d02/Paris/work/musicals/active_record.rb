require 'active_record'
require 'pry'

# establishes connection with ActiveRecord
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "Paris",
  :password => "",
  :database => "sandbox"
  )

# class is singular form of the name of the table, in this case Musicals. ActiveRecord will convert it to a plural. Tables should always be named in plural. ActiveRecord will know that Octopus => Octopi. 
class Musical < ActiveRecord::Base

end

puts Musical.find(1)

binding.pry


# [1] pry(main)> Musical.find(1)
# => #<Musical id: 1, title: "Follies", year: "1971", composer: "Sondheim">
# [2] pry(main)> Musical.find(1).class
# => Musical(id: integer, title: string, year: string, composer: string)
# [3] pry(main)> 