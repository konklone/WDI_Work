require './shelters.rb'


class Client

  def initialize (name, age)
      @name = name
      @age = age
      @pets = []
    end

    #creates instance variable for client name
    def name 
      @name
    end

    #creates instance variable for client age
    def age 
      @age
    end

    #creates instance variable for client pet(s)
    def pets
      @pets
    end

    #create instance method for client pet(s)
    def pets_owned (x)
      @pets.push (x)
    end

    def to_s
      "#{name} is #{age} years old. \n     Pet(s) owned: #{pets.join(", ")}"
    end

end

################ CLIENT END ##################
