require 'faker'
require 'pry'

class User
  def initialize(id, name, street_address, email_address)
  @id = id
  @name = name
  @street_address = address
  @email_address = email
  end

  def to_s
    new_user = "#{@name} lives at #{@street_address}. Their email is
    #{@email_address}"! 
  end
end

