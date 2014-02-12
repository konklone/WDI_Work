class Person
  attr_accessor :apartment, :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender}."
  end
end
