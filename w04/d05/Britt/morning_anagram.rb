def anagram_finder(word, possible_anagrams)
  matches = []
  
  possible_anagrams.each do |possibility|
    if possibility.split(//).sort == word.split(//).sort
      matches << possibility
    end
  end

  matches
end