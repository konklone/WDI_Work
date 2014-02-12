#   ### Wizard
# - Create a file called wizard.rb
# - In it define a wizard class. Here's the spec:
# - A wizard has:
#   - a name
#   - an array of spells (which will be strings)
# - We should be able to read and write for each attribute
# - We should be able to create a new wizard object, and when we create it it should have no spells at first
# - We should be able to convert to wizard object to a string in a way that tells us the name and all the spells they know.

# - After you've defined the class:
# - Create a new wizard named "Harry Potter" and store it in a variable called harry
# - Add "Lumos" to the spells Harry knows
# - Add "Accio" to the spells Harry knows
# - Add "Expecto Patronum" to the spells Harry knows
# - Print harry to the screen to check your to_s method

class Wizard
  attr_accessor :name, :spells

  def initialize(name)
    @name = name ## @name is the instance variable. the variable name is coming from the parameter. 
    @spells = []
  end

  def to_s
    return "#{@name} knows these spells #{@spells.join(", ")}." # do not puts it here because instead returning the string it will print it. we just want the string returned. 
  end

end

harry = Wizard.new("Harry Potter", "Lumos")

harry.spells.push("Lumos", "Accio", "Expecto Patronum") ##I don't understand why you need harry here, why can't it just be spells.push blah blah

puts harry # to access spells, to activate all the attributes. harry is a wizard object. 

#to test the harry.spells just type in:

harry.spells


####In a String class, the letter z is an object. 