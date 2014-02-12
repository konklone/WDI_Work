require "pry"

def translate(og_string)

    vowels = ["a", "e", "i", "o", "u"]

    first_letter = og_string[0]

    if vowels.include?(first_letter)
        translation = og_string + "way"
    else
        pig_string = first_letter
        index = 1
        check_letter = og_string[index]
        
        while !vowels.include?(check_letter)
            pig_string += check_letter
            index += 1
            check_letter = og_string[index]
        end
        
        translation = og_string[index..-1] + pig_string + "ay"

    end

    return translation

end

puts translate("egg")
puts translate("happy")
puts translate("glove")
