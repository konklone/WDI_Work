def encode(str)

plain = ('a'..'z')
cipher = plain.rotate(13)

str = str.split(//)

cipher_array = str.map do |char|
  index = plain.index
  cipher[index]
end

puts ciphertext_array.join("")

end

encode('hello')