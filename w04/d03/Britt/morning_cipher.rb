require 'pry'

def encode(word)
  alphabet = ('a'..'z').to_a

  word_ary = word.downcase.split(//)

  new_ary = word_ary.map do |letter|
    if !alphabet.include?(letter)
      letter
    else
      i = alphabet.index(letter)
      i = (i + 13) % 26
      letter = alphabet[i]
    end
    letter
  end
    new_word = new_ary.join
end
