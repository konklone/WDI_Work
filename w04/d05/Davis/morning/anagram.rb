def anagramer(anagram_list, word)
  # if anagram_list inlude a word w/ all letters in word
  # return anagram_list word

  result = anagram_list.select do |l|
    l.split("").sort == word.split("").sort
  end

  result
end

puts anagramer(%w(enlists google inlets banana), "listen")