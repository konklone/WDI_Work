
def cipher (word)
  plain_array = ("a".."z").to_a
  cipher = ("n".."z").to_a
  cipher_array = cipher + ("a".."m").to_a
  letter_hash = Hash[plain_array.zip(cipher_array)]
  array = []

  plaintext_array = word.split(//)

  plaintext_array.map do |char|
    array << letter_hash[char]
   end
  puts array.join
end

cipher("julie")