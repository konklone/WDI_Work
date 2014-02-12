require "pry"

def encode(word)
  plain_text = %w(a..z).to_a
  cypher = plain_text.rotate(13)
  
  plain_text_array = plain_text.split(//)

  ciphertext_array = plaintext_array.map do |char|  
  index = plain.index(char)
  cipher[index]  
  end
  cipher_text_array.join("")
end
binding.pry
