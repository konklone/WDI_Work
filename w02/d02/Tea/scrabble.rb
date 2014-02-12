class ScrabbleWord

  # Constant hash with tile values
  TILE_VALUES = {
    "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
    "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
    "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
    "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
    "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
    "z"=>10
  }

  # takes the word played
  def initialize(word)
    @word = word
  end

  #getter method that returns word as a lowercase string
  def word
    @word.downcase
  end

  #returns an array with each character in the word string being an item in the array
  def to_array
    word.chars
  end

  #takes an index as a parameter and returns the character in the word string at that index
  def char_at(i)
    to_array[i]
  end 

  #returns the scrabble score of the word. values from TITLE_VALUES Hash.
  def score
    @score = 0

    to_array.each do |character|
      @score += TILE_VALUES[character]
    end
    @score
  end

  # calls score method and multiplies the returned value by multiplier
  def multiplier_score(n)
    score * n 
  end
end

###FUNZIES

# return a hash with just key value pairs where score of letter is 4

# TILE_VALUES.select {|k,v| v == 4}

#get scores of each letter individually
# letter_array = ["c","h","a","i","r"]
# letter_array.map {|letter| TILE_VALUES[letter]}

