
def translate(word)
  vowels = ["a","e","i","o","u"]
  if !vowels.include?(word[0]) #first letter is a consonant
  	counter = 0
  	while !vowels.include?(word[counter])
  	  counter += 1
  	end
  	return word[counter..-1] + word[0..(counter-1)] +"ay"
  else #first letter is a vowel
  	return word+"ay"
  end
end


 