### ROT13 Caesar Cipher ###

def encode(word)
   plain = ("a".."z").to_a
   cipher = plain.rotate(13)
   
   word_array = word.chars

   ciphered_array = word_array.map do |char|
      index = plain.index(char)
      cipher[index]
   end
   ciphered_array.join("")
end

encode("hello")