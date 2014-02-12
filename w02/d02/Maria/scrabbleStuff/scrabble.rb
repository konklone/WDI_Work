#Ruby Constants:
#Constants begin with an uppercase letter. 
#Constants defined within a class or module can be accessed from 
#within that class or module, and those defined outside a class 
#or module can be accessed globally.
require 'pry'

class ScrabbleWord 
  
TILE_VALUES = {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10
}
  def initialize (word)
    @word = word
  end

  # def to_s
  #   "#{word}"
  # end

  def word
    @word.downcase # @word = word.downcase is not needed because we will access word through (work)
  end
#2. `s.to_array` returns an array with each character 
#in the word string being an item in the array.
  def to_array
    @word.split(" ") #or @word.chars will work too.
  end

  def score
    @score = 0
    self.to_array.each do |character|
      @score = @score + TILE_VALUES[character]
      # or use +=
    end
    @score
  end

#3. `s.char_at` takes an index as a parameter and 
#returns the character in the word string at 
#that index
  def char_at(index)
    self.to_array[index.to_i]
    #@word = TILE_VALUES[index]
  end
  

  def multiplier_score(multiplier)
    self.score * multiplier
  end
end

s = ScrabbleWord.new("konowitch")
binding.pry
 