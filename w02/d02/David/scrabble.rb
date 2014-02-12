require 'pry'

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

  def to_array
    self.word.chars
    # self.word.split("")
  end

  def char_at(index)
    self.to_array[index]
  end

  def score
    score = 0
      self.to_array.each do |x|
      score += TILE_VALUES[x].to_i
    end
    score
  end

  def multiplier_score(multiplier)
     self.score * multiplier.to_i
  end

end

s = ScrabbleWord.new("tarantula")

binding.pry

values = = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
  }

#* How would you return a hash with just the key value pairs where the score of the letter is 4?

#this preserves the original hash
values.select do|key,value|
  value == 4
end

#this destroys the original hash
values.keep_if {|k,v| v==4}

#Given an array like `letter_array = ["c","h","a","i","r"]`, how could I get back an array with the scores of each letter individually? Like `[3,4,1,1,1]

letter_array = ["c","h","a","i","r"]

letter_array.map { |letter| values[letter] }
