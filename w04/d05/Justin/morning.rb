def anagram?

	word = "listen"
	word_array = %w(enlists google inlets banana)

	split_word = word.word_split("").sort

	word_array.each do |w|
		check_word = w.split("").sort

		if check_word.count == split_word.count
			#loop to compare check_word by index to split_word


		
		end
	end
end