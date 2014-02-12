require 'faker'

# class MorningUser < ActiveRecord::Base
# end

class User

  def initialize(id_num, name, address, email_address)
    @id_num = id_num
    @name = name
    @address = address
    @email_address = email_address
  end

  def name
    @name
  end

  def address
    @address
  end

  def email_address
    @email_address
  end

  def to_s
    "Name: #{@name} Street: #{street_address} Email: #{@email_address}"
  end
end


