require 'pry'

def encode plaintext
  plain = ('a'..'z').to_a
  # my original way
  #cipher = ("n".."z").to_a + ("a".."m").to_a
  # better way this takes the plain array and moves every character to the left 13 spots
  cipher = plain.rotate(13)

  plaintext_array = plaintext.split(//)

  ciphertext_array = plaintext_array.map do |char|
    index = plain.index(char)
    cipher[index]
  end
  ciphertext_array.join("")
end

binding.pry

#puts "Please enter a word to be translated"
# @word = gets.chomp.downcase

# interesting code.  adds 13 to the plain index then gives the remainder of that /26 i.e y =37 % 26 = 11
index = (index + 13) % 26


