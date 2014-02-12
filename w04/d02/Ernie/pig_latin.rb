
vowels = %w[a e i o u]

def translate(string)
  unless string.start_with?  == vowels
    string << "way"
    else
    string.each_char { |chr|  }
    string.insert(-1,"ay")
  end 
    
end



#peter version

def translate(word)
  word = %w[a e i o u]
  if !vowels.include?(word[0])
    counter = 0
    while !vowels.include(word[counter])
    counter+=1      
    end
    return word [counter..-1] _word[0..(counter)] +"ay"
    else
    return word + "ay"   
  end
end