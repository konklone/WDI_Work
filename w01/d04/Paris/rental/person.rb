class Person
  attr_accessor :name, :age, :gender, :apartment
# initialize method

  def initialize(name, age, gender, apartment)
      @name = name
      @age = age
      @gender = gender
      @apartment = apartment
  end

#the below returns name as a pretty string and not an ugly ID code. 
  def to_s
    "#{@name} is a #{@gender} who is #{@age} years old and lives in #{@apartment}."
  end

  # def add_renters
  #   Hash.new = {@name => @apartment}
  # end

end



# p = Person.new("Earl", "30", "male", "4b")

# puts p.name

