require "pry"

def encode(plain_string, offset)
    #set up mapping
    plain_alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
    cipher_alphabet = Array.new
    cipher_string = String.new

    for x in (offset..25)
        cipher_alphabet << plain_alphabet[x]
    end

    for x in (0..offset-1)
        cipher_alphabet << plain_alphabet[x]
    end

   
    #binding.pry
    #do the encryption
    plain_string.split("").each do |x|
        if x == " "
            cipher_letter = " "
        else 
            cipher_letter = cipher_alphabet[plain_alphabet.index(x)]
        end
        
        cipher_string += cipher_letter
    end

    return cipher_string
end


puts encode("nichol", 13)
puts encode("hello", 13)
puts encode("peter", 13)
puts encode("what is a space", 13)

# puts encode("bannana")
# puts encode("bloop")