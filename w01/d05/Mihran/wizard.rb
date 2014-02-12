# ### Wizard
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

    def initialize (name)  
      @name = name
      @spells = [ ]
    end


    def to_s
    return " This wizard is named #{@name} and knows the spells #{@spells.join(", ")} "
    end




end 


harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos", "Accio", "Expecto Patronum")

puts harry.spells

puts harry

# ["Lumos", "Accio", "Expecto Patronum"]