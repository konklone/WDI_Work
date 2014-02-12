# abcdefghijklmnopqrstuvwxyz
# nopqrstuvwxyzabcdefghijklm

# hash
	# put each letter as unique symbol key 
	# as value

def encode(string)
	a = ("a".."z").to_a
	b = a.rotate(13)
	@result = string.split("")

	@result.map! do |l|
		index = a.index(l)

		b[index]
	end

	@result.join
end


p encode("uryyb")