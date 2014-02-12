a = ["Peter", "PJ", "Jeff"]
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

1. How would you return the string "Peter"?
puts a[0]

2. How would you add your name to the array?
a << "maria" or a.push("maria")

3. How would you remove "PJ" from the array
a.delete("PJ") this will give us beak what we just 
deleted so we can put it in a variable.
puts a{"0"}

1. How would you return the string "One"?
h[1]

2. How would you return the string "Two"?
h[:two]

3. How would you return the number 2?
h["two"]

4. How would you add {3 => "Three"} to the hash?
h[3] = "three"
5. How would you add {:four => 4} to the hash?
h[:four] = 4

6. How would you remove {1 => "One"} from the hash?
h.delete(1)

class Wizard
	attr_accessor :name, :spells
# when we creat a wiz he wont have any spells


def initialize(name) #parameter
	@name = name #instance variable gotten from the parameters
	@spells = []
end

def to_s
	"Your wizard's name is #{name} and your spells are #{@spells.join(", ")}"
end

end

harry = Wizard.new("Harry Potter")
harry.spells.push("Lumos")  
puts harry #puts Harry Potter aand his spells from to_s
puts harry.spells #puts only the spells
