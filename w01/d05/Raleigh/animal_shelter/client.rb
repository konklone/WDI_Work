### Client Class ###

class Client
   def initialize(name, age)
      @name = name
      @age = age
      @animals = []
   end

   def name
      @name
   end

   def age
      @age
   end

   def add_animals(new_animal)
      @animals.push(new_animal.split(", "))
   end

   def to_s
      "#{self.name} is #{self.age} years old and has the following #{@animals.length} animals: #{@animals.join(", ")}."
   end

end