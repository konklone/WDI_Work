class ScrabbleWord

	def initialize(word)
		@word = word
	end

	def word
		"#{@word.downcase}"
	end

	TILE_VALUES = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}

	def to_array
		self.word.split(//)
	end

	def char_at(index)
		self.to_array[index.to_i]
	end

	def score
		points = 0
		self.to_array.each do |letter|
			points += TILE_VALUES[letter]
		end
		points
	end

	def multiplier_score(multiplier)
		self.score * multiplier
	end

end

konowitch = ScrabbleWord.new("konowitch")

puts konowitch.score

######## For fun ########

TILE_VALUES = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}

letter_array = ["c","h","a","i","r"]

TILE_VALUES.select { |letter, points| points == 4 }

letter_array.map { |letter| TILE_VALUES[letter] }
