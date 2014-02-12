class Animal
          
    def initialize(name,species)
          @name = name
          @species = species
          @toys = []
    end
   
    def name
         @name
    end

    def species
         @species
    end
    def list_toys
          @toys.join(" , ")
  end

   def to_s
     "Im #{self.name} whose a #{self.species} with #{@toys.count}"
   end
end


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
    
    def animals
          @pets.join(" , ")
    end

    def to_s
        "Im #{self.name} whose #{self.age} with these many #{self.pets}"
    end
end

class Shelter
  def initialize(name)
        @name = name
        @animals = []
        @clients = []
  end

  def name
       @name
  end
  
  def clients
       @clients
  end

  def  animals
        @animals
  end

  def list_animals
      @animals.join(" , ")
  end

  def list_clients
      @clients.join(" , ")
  end

  def to_s
     "Hello we are #{self.name} who has these many animals #{@list_animals.count} and these many #{self.clients}"
  end
end



class CatLady
  def initialize(a)
    
  end
  
  
end