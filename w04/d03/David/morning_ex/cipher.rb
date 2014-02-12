require 'pry'

def encode(word)
  alphabet = ("a".."z").to_a
  letter_count = word.count word
  new_word = []
  counter = 0
  binding.pry
  letter_count.times do 
    letter = word[counter]
    index = alphabet.index(letter).to_i
      if index <= 12
        new_letter = alphabet[index+13]
      else
        new_letter = alphabet[index-13]
      end
      #alternative use modulus
      # index = (index +13) % 26
      # alphabet[index]
    new_word << new_letter
    counter += 1
  end
  word = new_word.join("")
end

puts encode("hello")


#solution with 2 arrays
def encode (plaintext)
  plain = alphabet = ("a".."z").to_a
  cipher = plain.rotate(13)
  
  plaintext_array = plaintext.split(//)
  #alternatively plaintext_array = plaintext.chars
  
  ciphertext_array = plaintext_array.map do |char|
    index = plain.index(char)
    cipher[index]
  end
  ciphertext_array.join("")
end