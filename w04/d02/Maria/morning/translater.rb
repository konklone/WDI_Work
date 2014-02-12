
def translate(word)
  vowels = ["a","e","i","o","u"]

  if !vowels.include?(word[0]) #first letter isa consonant
    counter = 0
    while !vowels.include?(word[counter])
      counter+=1
    end
    return word[counter..-1] + word[0..(counter-1)] +"ay"
  else
    return word + "ay"
  end
end

    