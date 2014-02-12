require 'pry'

class ScrabbleWord

  TILE_VALUES = {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
    "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
    "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
    "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
    "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
    "z"=>10}

  def initialize(word)
    @word = word
    #@TILE_VALUES = {}
  end

  def word
    @word.downcase
  end

  def to_array
    @word.chars  # This works
    #@word.split(" ") # This should work also
  end

  def multiplier_score(multiplier)
    self.score * multiplier
  end

  def char_at(index)
    self.to_array[index.to_i]
  end

  def score
    @score = 0
    self.to_array.each do |character|
      # the += is shorthand for using the @score again
      @score += TILE_VALUES[character]
    end
    @score
  end
end

s = ScrabbleWord.new("konowitch")
puts s.to_array
puts s.char_at(1)
puts s.score


values = {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
    "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
    "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
    "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
    "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
    "z"=>10}

# keep_if is a destructive method it will change the underlying hash (be careful)
#values.keep_if{|k,v| v == 4}

values.select do |key, value|
  value == 4
end

letter_array = ["c","h","a","i","r"]

# This will map the letters and return their values on a new array
puts letter_array.map { |letter| values[letter]}








