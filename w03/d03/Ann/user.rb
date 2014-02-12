class User 
  def initialize(id, name, address, email)
    @id = id 
    @name = Faker::Name.name
    @street_address = Faker::Address.street_address 
    @email_address = Faker::Internet.email 
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
    "Name: #{@name} Street: #{@street_address} Email: #{@email_address}."
  end 

end 

User1 = User.new("0", "Ann", "902 broadway", "ann@gmail.com")

