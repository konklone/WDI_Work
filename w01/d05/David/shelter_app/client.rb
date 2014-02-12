class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets = Hash.new
  end

  def name
    @name
  end

  def age
    @age
  end

  def pets
    @pets
  end

  def list_pets
    @pets.values.join("\n")
  end

  def to_s
    if @pets == Hash.new
      "Name: #{@name}, Age: #{@age}, has not yet adopted any pets"
    else
      "Name: #{@name}, Age: #{@age}, #{@pets.values.join(", ")}"
    end
  end

end