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
    #also @words.chars works
    @word_string = @word.split(//)
  end

  def char_at(index)
    @word_string[index]
  end

  def score
    sum = 0
    @word_string.each do |x|
      sum += TILE_VALUES[x].to_i
    end
    return sum
  end

  def multiplier_score(by)
    score * by.to_i
  end
  def points
    point_array = []
    @word_string.each do |x|
      point_array << TILE_VALUES[x]
    end
     "#{point_array}\n"
  end

end

s = ScrabbleWord.new("konowitch")
me = ScrabbleWord.new("grindhouse")
yo = ScrabbleWord.new("supercalifragilistic")

puts s.word
s.to_array

puts s.char_at(2)

puts s.score
puts s.multiplier_score(3)
print s.points

me.to_array
puts me.score
puts me.points
yo.to_array
puts yo.score
puts yo.points
