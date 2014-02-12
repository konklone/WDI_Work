# move consenants to back & add "ay"

# add "way" to word begin w/ vowel

def translate(word)
	vowels = %w{a e i o u}

	@word = word

	if vowels.include?(@word[0])
		@word += "w"
	else
		until vowels.include?(@word[0])
			# adjust for "qu"
			@word[0] == "q" ? @word += @word.slice!(0..1) : @word += @word.slice!(0)
			# stop if y
			break if @word[0] == "y"
		end
	end

	@word += "ay"
end

puts translate("happy")
puts translate("glove")

puts translate("egg")
puts translate("eight")

puts translate("yellow")
puts translate("rhythm")

puts translate("queen")
puts translate("squeal")