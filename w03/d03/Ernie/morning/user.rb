require "faker"
require_relative 'user_db'

class User
  def initialize(name, id, address, email)
    @name = name
    @id = id
    @address = address
    @email = email
  end

  def to_s
    "Name: #{@name} Id: #{@id} Street: #{@address} Email #{@email}"
  end 

end


