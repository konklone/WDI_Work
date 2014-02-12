# This file is a class definition for Shelter. 
#This shelter has a name. 

require_relative 'animals'

class Shelter
  def initialize( name )
    @name = name
    @animals = {}
    @clients = {}
  end 

  def to_s
    "Welcome to #{@name}!"
  end 

  #This adds an Animal object in to the Shelter object, into a hash named @animals 
  def add_animals( new_animal )
      @animals[ new_animal.name ] = new_animal
  end 

  def return_animal  

  end 

  #This prints the animals in the shelter. 
  def list_animals
    puts "The animals in the shelter are: #{@animals}."  
  end 

  def list_clients
    puts "The clients at the shelter are: #{@clients}."  
  end  

end 

happitrails = Shelter.new( "Happitails!" )
puts happitrails.to_s


happitrails.add_animals( Animal.new( "GOLDIE!", "goldfish" ) )
happitrails.add_animals( Animal.new( "Stew", "sparrow" ) )

happitrails.list_animals
