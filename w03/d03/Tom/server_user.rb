
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








