Morning Cypher stuff

alphabet moved over 13 

maybe 2 arrays
plain = [abcdefghijklmnopqrstuvwxyz]
cipher = [nopqrstuvwxyzabcedfghijklm]
Each letter = a different letter. 
make a hash?

so maybe have each letter = something else?
Maybe do a case stmt for each one and the put into another array?But first we want
to create each array.

make a range of letters and and make an array:
then move it over 13 
then create a hash?

h.each_key {|key| puts key }

a.map { |x| x + "!" } 

def encode(word)

plain = ('a'...'z').to_a 
cipher = (above moved down 13)


end


def encode plaintext
  plain = ('a'..'z').to_a

  plaintext_array = plaintext.split(//)

  cipherext_array = plaintext_array.map do |char|
  index = plain.index(char)
  index = (index + 13) % 26
  plain[index]
send
  ciphertext_array.join("")
end


