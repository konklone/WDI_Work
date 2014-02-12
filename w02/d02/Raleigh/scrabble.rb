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

# returns the word stored in the instance variable and formats it using lowercase letters
   def word
      @word.downcase
   end

# returns an array with each character in the word string being an item in the array
   def to_array
      self.word.split("")
   end

# takes an index as a parameter and returns the character in the word string at that index
   def char_at(index)
      self.to_array[index.to_i]
   end

# returns the scrabble score of the word. The values for each letter are listed in the TILE_VALUES hash
   def score
      @score = 0
      self.to_array.each do |letter|
         @score += TILE_VALUES[letter]
      end
      "Your word score: #{@score}"
   end

# takes a multiplier as a parameter and returns a multiplied value of the score. (Think double or triple word score.)
   def multiplier_score(times)
      puts "Your bonus score: #{@score*times}"
   end

end

### Definitions End, Program Begins ###

puts "\n***ScrabbleWord***"
puts "Please enter your word:"
new_word = gets.chomp

s = ScrabbleWord.new(new_word)

puts s.score

puts "Is your word on a double or tripple word space?"
answer = gets.chomp.downcase
if answer == "yes"
   puts "(2)double or (3)tripple?"
   times = gets.chomp.to_i
   s.multiplier_score(times)
end
