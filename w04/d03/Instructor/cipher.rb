## Two array strategy
def encode plaintext
  plain = ('a'..'z').to_a
  cipher = plain.rotate(13)

  plaintext_array = plaintext.split(//)

  ciphertext_array = plaintext_array.map do |char|
    index = plain.index(char)
    cipher[index]
  end

  ciphertext_array.join("")

end

## Add 13 to the index strategy
def encode plaintext
  plain = ('a'..'z').to_a

  plaintext_array = plaintext.split(//)

  ciphertext_array = plaintext_array.map do |char|
    index = plain.index(char)
    index = (index + 13) % 26
    plain[index]
  end

  ciphertext_array.join("")

end
