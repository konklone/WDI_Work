def too_to_to(word)
  wordArray = word.split(" ")
  wordArray = wordArray.map do |word| word.chars.uniq.join("") end
  wordArray.join(" ")
end

# def too_to_to(word)
#   wordArray = word.split(" ")
#   wordArray = wordArray.map do |word|
#     word = word.chars
#     word.map do |i|
#       return if word.index(i-1) != word.index(i)
#     end
#   end
#   wordArray.join(" ")
# end
