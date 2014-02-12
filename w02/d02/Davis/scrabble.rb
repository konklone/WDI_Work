class ScrabbleWord
	def initialize(word)
		@word = word
	end

	def word
		@word.downcase
	end

	TILE_VALUES = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}
	
	def to_a
		word.split("")
	end

	def char_at(index)
		word[index]
	end

	def score
		array_nums = to_a.map { |letter| TILE_VALUES[letter] }
		array_nums.inject(:+)
	end

	def multiplierscore(multiplier)
		score * multiplier
	end
end

s = ScrabbleWord.new("konowitch")
s.to_a
s.char_at(1)
s.score
s.multiplierscore(2)

TILE_VALUES = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}

TILE_VALUES.keep_if { |k,v| v == 4 }

letter_array = ["c","h","a","i","r"]

letter_array.map { |letter| TILE_VALUES[letter] }