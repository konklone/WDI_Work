require './animals.rb'
require './clients.rb'
require './seeds.rb'

class Shelter

  def initialize (name)
      @name = name
      @adoption = adoption
      @pet_return = pet_return
      @clients = []
      @animals = []
    end

    #creates instance variable for shelter
    def name
      @name
    end

    #creates instance variable for shelter
    def adoption
      @adoption
    end

    #creates instance variable for shelter
    def pet_return
      @pet_return
    end

    def animals
      @animals
    end

    def clients
       @clients
    end

    #add animal to shelters
    def add_animals(animal)
      @animals.push(animal)
    end

    #add clients to shelters
    def add_clients(client)
      @clients.push(client)
    end

    def to_s
      #{}"#{name} has #{shelter_clients.length} clients and #{shelter_animals.length} animals."
    end

end

################ SHELTER END ##################