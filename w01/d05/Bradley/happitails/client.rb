class Client

  def initialize(name, age)
    @name = name
    @age = age
    @animals = {}
  end

  def name
    @name
  end

  def age
    @age
  end

  def animals
    @animals
  end

  def to_s
    puts "#{self.name} is #{self.age} years old and has #{self.animals.length} pets."
  end

end

class CatLady < Client
end

