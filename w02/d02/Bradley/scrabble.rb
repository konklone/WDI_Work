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
    @word = word.downcase
    @score = 0
  end

  def word
    @word
  end

  def to_array
    @word = @word.split("")
  end

  def char_at(i)
    word[i]
  end

  def score
    @word.each { |tile| @score += TILE_VALUES[tile]}
    @score
  end

  def multiplier_score(i)
    @score *= i
    @score
  end

end

jeff = ScrabbleWord.new("Konowitch")
puts jeff.word
puts jeff.to_array
puts jeff.char_at(2)
puts jeff.score
puts jeff.multiplier_score(2)
