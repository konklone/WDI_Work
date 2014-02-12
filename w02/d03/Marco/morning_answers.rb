class Person

  def initialize(name)
    @name = name
  end

  def self.learn
    puts "I'm a class method"
    puts self
  end

  def learn
    puts "I'm an instance method"
    puts self
  end

  def hello
    self.learn
  end

  def hello_again
    learn
  end

end

# 1 - 3. I'm an instance method' is typed to pry in each case 

# 4. I'm a class method

# 5 - 6. NoMethodError: undefined method `hello' for Person:Class

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts random_animals.map {|x| puts x + "s"}

puts random_animals.each 

puts random_animals.sort

puts random_animals.sort.reverse

puts random_animals.map { |animal_string| animal_string.reverse }

puts random_animals.sort_by {|x| x.length}

puts random_animals.sort_by {|x| x[-1]}



