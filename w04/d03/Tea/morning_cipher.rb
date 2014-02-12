def encode plaintext
  plain = ('a'..'z').to_a
  cipher = plain.rotate(13)
  codex = Hash[plain.zip cipher]

  plaintext_array = plaintext.split(//)

  ciphertext_array = plaintext_array.map do |char|
    codex[char]
  end

  ciphertext_array.join("")
end

