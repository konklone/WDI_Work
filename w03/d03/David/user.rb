class User

  def initialize(id, name, street_address, email_address)
    @id = id
    @name = name 
    @street_address = street_address
    @email_address = email_address
  end

  def id
    @id
  end

  def name
    @name
  end

  def street_address
    @street_address
  end

  def email_address
    @email_address
  end

  def to_s
    "Id: #{@id}, Name: #{@name}, Street: #{@street_address}, Email: #{@email_address}"
  end

end