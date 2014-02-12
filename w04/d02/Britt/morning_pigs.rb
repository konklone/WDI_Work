require 'pry'

@init_vowels = ['a', 'e', 'i', 'o', 'u']
@vowels = ['a', 'e', 'i', 'o', 'u', 'y']

def piglatininzer(word)
  if !@init_vowels.include?(word[0])
    i = 1
    while !@vowels.include?(word[i])
      i += 1
    end
    word_ary = word.partition(word[i])
    prefix = word_ary.shift
    word_ary << prefix
    word_ary << "ay"
    @new_word = word_ary.join
  else
    @new_word = word + "way"
  end
  @new_word
end