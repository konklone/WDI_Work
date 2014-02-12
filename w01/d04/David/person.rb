# class Person
#   attr_accessor :name, :age, :gender, :apartment

#   def initialize(name, age, gender, apartment)
#     @name = name
#     @age = age
#     @gender = gender
#     @apartment = apartment
#   end

#   def to_s
#     "You have successfully created a new tenant\nName: #{@name}, Age: #{@age}, Sex: #{gender}, Apartment: #{apartment}"
#   end
# end

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize
    @name
    @age
    @gender
    @apartment = Hash.new
  end

  def to_s
    "You have successfully created a new tenant\nName: #{@name}, Age: #{@age}, Sex: #{@gender}, Apartment: #{@apartment}"
  end
end


