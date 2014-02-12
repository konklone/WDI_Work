### Wizard
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

  #These allow us to read or write into the class
  attr_accessor :name, :spells
  #Wizards are created with only their names
    def initialize(name)
      @name = name
      @spells = []
    end
    def to_s
      #.join turns the output array into a string seperated by ", "
      "My name is #{@name} and I can #{@spells.join(", ")}"
    end
end

new_wizard = Wizard.new("Harry Potter")
#spells refers to the attr_accessor :spells, now we can pass method .push 
#directly onto it
new_wizard.spells.push("Lumos")
new_wizard.spells.push("Accio")
new_wizard.spells.push("Expecto Patronum")

new_wizard.to_s


