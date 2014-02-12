require 'pry'


def reverse_words(words)
  word_array = words.split(" ")
  i=0
  j=word_array.length - 1
  new_word_array = Array.new
  puts word_array
  puts word_array[j]

  while i < word_array.length
    new_word_array[i] = word_array[j]
    i+=1
    j-=1
  end

  return new_word_array
end
