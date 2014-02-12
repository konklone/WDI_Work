require 'pry'

class ScrabbleWord

  TILE_VALUES values = {
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
  #it's already a string because it's being passed through the initialize method 

  def word  
    @word.downcase  
  end 

  def to_array
    @word.chars 
    #OR can do @word.split("") 
  end 

  def char_at(index)
    self.array[index.to_i]
    #SELF = self-referential, referring to the instance variable instead of creating additional variables 
  end  

  def score
    @score = 0 
    self.to_array.each do |character|  
    @score += TILE_VALUES[character]
    end 
    @score 
  end   

  def multiplier_score(multiplier)
    if multiplier == 2 
      puts self.score * 2 
    elsif multiplier == 3
      puts self.score * 3 
    end 
  end 

# How would you return a hash with just the key value pairs where the score of the letter is 4?
  def four_point_letters
    values.keep_if{|k,v| v == 4}
    #OR 
    values.select do |key, value|
      value == 4 
    end 
    #keep if takes away all elements that don't fit the outlined parameters
  end 
end 

# Given an array like `letter_array = ["c","h","a","i","r"]`, how could I get back an array with the scores of each letter individually? Like `[3,4,1,1,1]`
#EXAMPLE: letter_array = ["c", "h", "a", "i", "r"]
#letter_array.map {|letter| values[letter]} 


#######################PROGRAM BEGINS###############

#puts "What is the word you would like to play next in Scrabble?"
#@word = gets.chomp  
#puts "Your word is #{@word}."
 
s = ScrabbleWord.new("konowitch") 
puts @word.score 

 




