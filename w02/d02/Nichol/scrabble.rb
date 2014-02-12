require 'pry'

class ScrabbleWord

	TILE_VALUES = { "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1, "f"=>4, 
		"g"=>2, "h"=>4, "i"=>1, "j"=>8, "k"=>5, "l"=>1, "m"=>3, 
		"n"=>1, "o"=>1, "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1, 
		"u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4, "z"=>10 }

	def initialize(word)
		@word = word

	end

	def to_array
		@word_array = @word.split("")
	end

	def char_at(position)
		# self.to_array[position]
		word_array = self.to_array
		@char = word_array[position]
	end

	def score
		@score = 0
		word_array = self.to_array
		word_array.each do |x|
			@score = @score + TILE_VALUES[x]
		end
		return @score
	end

	def multiplier_score(multiplier)
		@multiplied = self.score * multiplier
		return @multiplied
	end

	def word
		@word.lowercase
	end


end

puts "Scrabble Class"
new_word = ScrabbleWord.new("konowitch")
num1 = new_word.score
puts num1
mult = new_word.multiplier_score(3)
puts mult