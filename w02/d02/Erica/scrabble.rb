require 'pry'


class Scrabble
    attr_accessor :word
    def initialize(word)
      @word = word
    end

    def word
      @word.downcase
    end


TILE-VALUES =  {
  "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
  "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
  "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
  "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
  "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
  "z"=>10}

    def to_array 
      letter_array = word.split("")
      self.word.split("")
    end

    def char_at(index)
      self.word.to_array[index.to_i]
    end

    def score(word)
      @score = 0
      self.to_array.each do |character|
        @score = @score + TILE-VALUES[character]
        # better written as @score = += TILE-VALUES[character]
    end

    def multiplier_score(multiplier)
      self.score * multiplier
    end

end








