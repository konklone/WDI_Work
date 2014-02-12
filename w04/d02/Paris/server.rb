v = ["a," "e", "i", "o", "u"]



def translate(word)
  word.each do |word|
    if x.first.include?("a," "e", "i", "o", "u") = true  
      x + "way"
  else 
    x.first.slice!
end

# while letter is consonant,
#   move to next letter and keep track of how far we are.
#   once we hit a vowel, take the letters(c) stick on the end and add 'ay'
