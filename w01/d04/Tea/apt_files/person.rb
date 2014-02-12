class Person

  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def to_s
    "Tenant at #{@apartment} is #{@name} who is a #{@age} year old #{@gender}"
  end

end

# peter = Person.new("peter","100","Male","Apt 40")

# variable1 = Person.new(par1, par2, par3, par4)





