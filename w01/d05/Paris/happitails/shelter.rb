#require "pry"

class Shelter

  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
    @adopted_pet = []
  end

  def to_s
    return "#{@name} has #{@clients.count} clients and  #{@animals.count} animals."
  end

  def name
    @name
  end

  def adopted_pet
    @adopted_pet
  end

  def remove_pet_from_shelter(x)
    @animals.delete(x)
  end

  def return_pet_to_shelter(x)
    @adopted_pet.delete(x) 
    puts "Thank you. #{x.capitalize} has been returned to HappiTails."
  end

  def clients
    @clients
  end

  def adoptables_list
    @animals.values.join("\n")
  end 

  def animals
    @animals
  end

   def current_clients
    @clients.values.join("\n")
   end

end


