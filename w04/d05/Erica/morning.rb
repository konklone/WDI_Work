# Write a program that, given a word and a list of possible anagrams, selects the correct one(s).

# In other words, given: "listen" and %w(enlists google inlets banana) the program should return "inlets".

# Think about: What are some scenarios we should test for?

anagram = %w(enlists google inlets banana)
anagram.group_by { |word| word.chars.sort }.values


input = "listen"
split_input = input.split(//) 
if split_input.size == anagram.size && split_input.sort == anagram.sort
  print i
else print "no anagram"
end
