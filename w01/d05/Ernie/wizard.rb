class Wizard

  attr_accessor :name,:spells

        def initialize(name)
          @name = name
          @spells = []
        end

        def to_s 
          "Hello I'm #{@name} the Wizard and here's the spells i know #{@spells.join(",")}"
        end
        
        
        
end

harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos","Accio","Expecto Patronum")
puts harry.spells

puts harry