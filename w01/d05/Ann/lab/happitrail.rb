class Shelter
  def initialize(name, animals, clients)
    @name = name 
    @animals = []
    @clients = []
  end 

  def adopt_animal 
    push
  end 

  def return_animal  
    
  end 

  def list_animals
    puts "The animals in the shelter are: #{@animals}."  
  end 

  def list_clients
    puts "The clients at the shelter are: #{@clients}."  
  end 

end 

class Animal 
  def initialize(name, species)
    @name = name 
    @species = species 
    @toy = []
  end 

  def name
    @name
  end 

  def species
    @species 
  end 

  def add_toy(toys) 
    @toy.push(toys)
  end 

  def to_s
    "#{@name} is a #{@species} and likes to play with #{@toy}."
  end 

  def list_animals
      @animals.join("\n")
  end
end  

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

