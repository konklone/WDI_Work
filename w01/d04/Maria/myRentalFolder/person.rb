class Person
 attr_accessor :name, :age, :gender, :apartment

def initialize (name, age, gender, apartment)
	@name = name
	@age = age
	@gender = gender
	@apartment = apartment
end

def to_s
	"Your name is : #{@name}. Your age is #{@age}. Your gender is #{@gender}. Your apartment is #{@apartment}"
end

end

# puts person1 = Person.new("Tom","33","male","2B")
# puts person2 = Person.new("Maria","25","female","4C")
# puts person3 = Person.new("Johnny","45","male","12G") 
# puts person4 = Person.new("Russ","98","male","Penthouse") 




