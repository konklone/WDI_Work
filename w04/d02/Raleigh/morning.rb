def translate(word)
   vowel = ["a", "e", "i", "o", "u"]

   # If first character is a consonant
   if !vowel.include? (word[0])
      # Iterator for the while loop
      i = 0
      while !vowel.include? (word[i])
         i += 1
       end

         # Move the vowel portion of the word to the end and add "ay"
         output = word[i..-1] + word[0..(i-1)] + "ay"
         return output

   # If first character is a vowel
   else
      # Add "way" to the end of the word
      output = word + "way"
      return output
   end
end

puts translate("happy")