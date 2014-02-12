class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def name 
    @name 
  end

  def age
    @age 
  end

  def pets
    @pets = pet
  end

  def show_pets
    @pets.join(", ")
  end
  
  def to_s
    
    "#{@name}, whose age is #{@age} has #{@pets.join(", ")} number of pets."
  end
end