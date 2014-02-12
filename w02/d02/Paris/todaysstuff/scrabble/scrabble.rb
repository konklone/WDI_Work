class ScrabbleWord

  def initialize(word) #if it's in here don't need a to_s
    @word = word
    @TILE_VALUES = {} #uppercase means constant
    @score = 0
  end

  def to_s
    @word.downcase
  end

  def word 
    @word.downcase # this is our getter. 
  end

  def to_array
    self.chars #this will turn it into an array so don't need to initialize another array
  end

  def char_at(index)
    self.to_array[index.to_i] #self refers to the scrabble word. self go gets @word.downcase. 
  end

  def score
      self.to_array.each do |character|
      @score = @score + TILE_VALUES[character]
      end
      @score
  end

  def multiplier_score(multiplier) #assumes that the variable would be an integer and not a string i.e. "double world score", "triple world score."
    self.score * multiplier
  end


end

end 


values.keep_if {|k,v|} v == 4 # method 1. keep_if is a built in method for integers. but this wil throw away the values in the hash that don't meet the requirement. use select if you want to keep the thrown away values.

values.select do |key, value| #method 2. doesn't change the hash, just returns the values we want. 
  value == 4
  letter_array.map {|letter| values[letter]}

word = ScrabbleWord.new("word")

# tile_values = {
#   "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
#   "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
#   "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
#   "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
#   "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
#   "z"=>10
# }

# @word.s.to_array

puts word.word
puts word.to_array

# 2. `s.to_array` returns an array with each character in the word string being an item in the array
# 3. `s.char_at` takes an index as a parameter and returns the character in the word string at that index
# 4. `s.score` returns the scrabble score of the word. The values for each letter are listed in the TILE_VALUES hash.
# 5. `s.multiplier_score` takes a multiplier as a parameter and returns a multiplied value of the score. (Think double or triple word score.)







