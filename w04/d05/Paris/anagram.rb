word = "maps"

def given_chars(word)
  word.split(//)
end

@given_word = given_chars(word)

array = %w(pams google inlets banana)
array.map do |word|
  @n = word.split(//)
  if @given_word.sort == @n.sort
    puts word
  end
end



