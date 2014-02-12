def translate(word)
	
	

	v_array = ["a", "e", "i", "o", "u"]

	if vowels.include?(word[0])
		counter = 0
		while vowels.include?(word[counter])
			counter =+
		end
		return word[counter..-1] + word[0..(counter-1)] +"ay"
	else
		word + "ay"
	end


end