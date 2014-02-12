class Person

  attr_accessor :name, :age, :gender, :apartment

  def initialize (name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

   def to_s
     "Your name is #{@name}, your a #{@age} year old #{@gender} and live in apartment #{@apartment}"
   end

end

  puts person1 = Person.new("Tom","38","M","2B")
  puts person2 = Person.new("Joe", "28", "M", "3B")
  puts person3 = Person.new("Maria", "26", "F", "4A")
  puts person4 = Person.new("Jane", "57", "F", "3B")



# puts person1
# puts person2
# puts person3
# puts person4










