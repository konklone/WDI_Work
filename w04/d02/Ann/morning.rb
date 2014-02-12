#Pig Latin App 
vowels = ["a", "e", "i", "o", "u"]

words = ["horse", "moose", "cow", "cat", "dog", "penguin", "duck", "alligator"]

words.sample.translate 

  def translate 
    vowels = ["a", "e", "i", "o", "u"]
    if !vowels.include?(word[0]) #first letter is a consonant
      counter = 0 
      while !vowels.counter(word[counter])
        counter +=1 
      end 
      return word [counter..-1] + word[0..(counter-1)] + "ay"
    else 
      return word + "ay"
    end 
  end 

