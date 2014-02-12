 class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def pets
    @pets
  end

  def list_pets()
    @pets.join("\n")
  end

  def to_s
    "#{@name} is #{@age} years old and has #{@pets.count} pet(s)."
  end

end
