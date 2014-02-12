# * Define a class named ScrabbleWord. It's initializer takes one parameter: `word` and stores it in an instance variable. Write a "getter" for this instance variable that returns the word as a lowercase string.

# * Define a CONSTANT hash for your class called TILE_VALUES. Here is the hash:

# ```ruby
{
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}
# ```

# * The class should respond to the following method calls (for an ScrabbleWord object `s`):

# `s.to_array`, `s.char_at`, `s.score`, and `s.multiplier_score`

# 1. Make all of the methods *stubs*: ie they do nothing.
# 2. `s.char_at` and `s.multiplier_score` each take **one** parameter/argument; the rest take none.

# * Write procedures for your class, such that:

# 1. `s.word` returns the word stored in the instance variable and formats it using lowercase letters.
# 2. `s.to_array` returns an array with each character in the word string being an item in the array
# 3. `s.char_at` takes an index as a parameter and returns the character in the word string at that index
# 4. `s.score` returns the scrabble score of the word. The values for each letter are listed in the TILE_VALUES hash.
# 5. `s.multiplier_score` takes a multiplier as a parameter and returns a multiplied value of the score. (Think double or triple word score.)

# * Check your work on the scrabble word "konowitch". It scores 21 points.

class ScrabbleWord
  TILE_VALUES = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}



  def initialize(word)
    @word = word
  end

  def word
    @word.downcase
  end


  def to_array
    @word.split(//)
    #@word.chars
  end

  def char_at(index)
     self.to_array[index]
  end

  def score
    @score = 0
    self.to_array.each do |x|
      @score += TILE_VALUES[x]
    end
    @score
  end

  def multiplier_score(num)

  end


end

s = ScrabbleWord.new("konowitch")

 puts s.score
