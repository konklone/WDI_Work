require 'pry'
class ScrabbleWord


  def initialize(word)
	@word = word
	end

#returns the word stored in the instance variable
# as lowercase 

  def word
    @word.downcase
  end

  TILE_VALUES = 
  {
    "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
    "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
    "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
    "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
    "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
    "z"=>10
  }
  #returns an array with each character
  def to_array
    @word.chars
  end
  #takes an index an as a parameter
  #returns the character in the word string at that index
  def char_at(index)
	self.to_array[index.to_i]
  end
  #returns the scrabble score of the word
  def score
	@score = 0
	self.to_array.each do |character|
		@score += TILE_VALUES[character]
    end
	@score
  end

  def multiplier_score(multiplier)
	self.score * multiplier
  end

end

s = ScrabbleWord.new("konowitch")
binding.pry

