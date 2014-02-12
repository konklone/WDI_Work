
def encode (word)
	alpha_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	encrypted_array = alpha_array.rotate(13)
	word_array = word.split("")
	index_of = 0
	new_word = ""

	word_array.each do |letter|
		index_of = alpha_array.index(letter)
		new_word += encrypted_array[index_of]
	end

	return new_word

end
