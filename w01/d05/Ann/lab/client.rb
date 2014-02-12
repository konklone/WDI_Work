#clients 

class Client 
  def initialize(name, age, number_of_pets)
    @name = name 
    @age  = age 
    @number_of_pets = number_of_pets 
    @clients = []
  end 

  def name
    @name 
  end 

  def age 
    @age 
  end 

  def number_of_pets 
    @number_of_pets 
  end 

  def to_s
    "The client #{@name} is #{@age} years old and has #{@number_of_pets} pet(s)." 
  end 

  def list_clients 
    @clients.join("\n")
  end 
end 

erin = Client.new("Erin", "45", "1")
john = Client.new("John", "50", "2")
paul = Client.new("Paul", "24", "1")

puts erin
puts john 
puts paul  

puts list_clients