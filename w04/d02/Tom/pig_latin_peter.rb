def translate(word)
  # Create the vowel array for comparison purposes
  vowel_array = ['a', 'e', 'i', 'o', 'u']
  if !vowel_array.include?(word[0]) # first letter is a consonant
    counter = 0
    while !vowel_array.include?(word[counter])
      counter += 1
    end
    return word[counter..-1] + word[0..(counter-1)] + 'ay'
  else # first letter is a vowel
    return word+'ay'
  end
end




