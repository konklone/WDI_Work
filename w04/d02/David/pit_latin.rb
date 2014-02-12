def translate(string)
  
  vowel_array = ["a", "e", "i", "o", "u"]
  string_array = string.split(//)

  iterator = 0
  vowel_array.each do |vowel| #this doesn't work because it checks each vowel
    if string_array[iterator] != vowel
      first_letter = string_array.shift
      string = string_array.join(",").gsub("ay", "") + first_letter + "ay"
    elsif string_array[0] == vowel
      string = string + "way"
    end
  end
    
  end

 

def translate(word)
  vowel = ["a", "e", "i", "o", "u"]
  if !vowels.include?(word[0]) #first letter is consonant
    counter = 0
    while !vowels.include?(word[counter])
      counter += 1
    end
    word[counter..-1] + word[0..(counter-1)] + "ay"
    #[counter..-1] gives everything from counter to last letter of the word
    #[0..(counter-1)] gives everthing from the first letter of the word to the letter before the current check
  else #first letter is vowerl
    word + "ay"
  end
end




    

