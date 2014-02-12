class Person

  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def to_s
    puts " "
    puts "name : #{@name}"
    puts "age : #{@age}"
    puts "gender : #{@gender}"
    puts "apartment : #{@apartment}"
    puts " "
  end

end