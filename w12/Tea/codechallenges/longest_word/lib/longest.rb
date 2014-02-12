def longest_word(string) do
  array = string.split(" ")
  sorted = array.sort do |word| word.length end
  sorted.first
end
