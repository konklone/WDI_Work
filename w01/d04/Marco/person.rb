

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize (name, age, gender, apt)
    @name = name
    @age = age
    @gender = gender
    @apt = apt
  end

  def to_s
    "#{@name}, #{@age}, #{@gender}, #{@apt}"
  end

end

#Person.push(name, age, gender, apt)

#new_tenants.push("#{name}, #{age}, #{gender}, #{apt}"


