def encode word

  alphabet = [*('a'..'z')]
  rotated = alphabet.rotate(count=13)

  plaintext_array = word.chars

  ciphertext_array = plaintext_array.map do |char|
    index = alphabet.index(char)
    rotated[index]
  end

  ciphertext_array.join("")

end

