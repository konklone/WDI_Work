#CLASS TO CREATE A PERSON INSTANCE
class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age 
    @gender = gender
    @apartment = apartment
  end

  def to_s
    puts "#{name}, #{age}, #{gender}, #{apartment}"
  end

end


