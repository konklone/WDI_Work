require "pry"

def anagram(word, possible_list)
    binding.pry
    matches = Array.new
    word_array = word.split("")
    flag = true

    possible_list.each do |possible_word|
        
        if word.size != possible_word.size then
            flag = false
        else
            word_array.each do |check_letter|
                if !possible_word.include? (check_letter) then
                    flag=false;
                end
            end
        end
        
        if flag == true 
            matches << possible_word

        end
    end
    
    return matches

end


my_word = "listen"
my_list = %w(enlists google inlets banana)


my_matches = anagram(my_word, my_list)
puts my_matches
binding.pry