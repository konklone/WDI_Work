require 'faker'
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


class User
  def initialize(id, name, street_address, email_address)
    @id = id
    @name = name
    @street_address = street_address
    @email_adress = email_address
  end

  def to_s
    "Name: #{@name} Street: #{@street_address} Email: #{@email_address}"
  end
end


# set up the loop to create 50 user objects and pass them into the User hash

id = 1

while id < 51 do ||

Faker::Name.name
Faker::Address.street_address
Faker::Internet.email








