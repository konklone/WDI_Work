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

pj = Person.new("PJ")

pj.learn
pj.hello
pj.hello_again

puts "" 

##################################################################

random_animals = ["porpoise", "pony", "camel", "platipus", "lobster", "kangaroo", "wombat", "chameleon"]

def plural(word)
	chars_ary = word.chars
	if word[-1] == 'y'
		chars_ary.pop
		chars_ary.join + "ies"
	elsif word[-2] == 'u' && word[-1] == 's'
		chars_ary.pop
		chars_ary.pop
		chars_ary.join + 'i'
	else
		word + 's'
	end
end

random_animals.each {|animal| puts "#{plural(animal)}" }

random_animals.sort
random_animals.sort { |a,b| b <=> a}
random_animals.map { |animal| animal.reverse }
random_animals.sort { |a,b| a.length <=> b.length }
random_animals.sort { |a,b| a.chars.last <=> b.chars.last }








