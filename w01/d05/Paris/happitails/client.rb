#require "pry"

class Client
  # attr_accessor :name, :age, :pets_list

  def initialize(name, age)
    @name = name
    @age = age
    @pets_list = []
  end

  def name
    @name
  end

  def pets_list
    @pets_list
  end

  def bring_pet_back(x)
    @pets_list.delete(x)
  end

  def age
    @age
  end

  def to_s
    "#{@name} is #{@age} years old. Total pets: #{@pets_list.count}"
  end

  def add_pet(y)
    @pets_list << y
    puts "Congrats, #{@name}. You've just adopted #{y}."
 end


end

class CatLady < Client
  def initialize(name, preference)
    @name = name
    @preference = preference
  end

  def preference
    "I love cats!"
  end

end

# Add a new class that inherits from your client/person class called CatLady. A cat lady only takes cats, and take as many cats as there is space in a computer's memory.

