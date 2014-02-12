def encode plaintext
  plain = ('a'..'z').to_a
  cipher = plain.rotate(13)

  plaintext_array = plaintext.split(//)

  ciphertext_array = plaintext_array.map do |char|
    index = plain.index(char)
    cipher[index]
  end

  cipher_text_array.join("")

  

end