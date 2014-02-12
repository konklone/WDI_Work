class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    @name 
  end

  def age
    @age
  end

  def pets
    @pets
  end

  def to_s
    "#Name: #{name} Age: #{age} Pets: #{pets.join("\n")}"
  end

  def add_pet(new_pet)
    @pets.push(new_pet)
  end
end