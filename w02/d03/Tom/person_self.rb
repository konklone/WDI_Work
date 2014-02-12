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

# puts Person.learn
# puts Person.hello
# puts Person.hello_again


random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# random_animals.each do |animal|

# end

random1 = random_animals.map { |s| s + "s"  }
random2 = random_animals.sort
random3 = random_animals.reverse
random4 = random_animals.map { |a| puts a.to_s.reverse }
random5 = random_animals.sort_by { |x| x.length }

random6 = random_animals.join(" ").reverse.split.to_a
# Return an array of the animals sorted alphabetically by the last character in the string
random7 = random_animals.sort_by { |animal| animal.split("").last }

# This will sort by the first letter and only the first letter it won't recognize the 2nd letters
random8 = random_animals.sort_by { |animal| animal[0]}

# This will sort by the last letter and only the last letter it won't recognize any other letters
random8 = random_animals.sort_by { |animal| animal[-1]}

puts random6
# puts random2
# puts random3







# puts pj.learn
# puts pj.hello
# outs pj.hello_again