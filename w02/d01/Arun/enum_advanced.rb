nums = [1, 2, 3]

nums.map do |num|
	num + 2
end
#num can be anything... can interchange it to blah, simply a name placeholder.
######################################################
sum = 0  
nums.each do |num|
	sum += num
end
######################################################
nums.reduce do |sum, nxt|
	sum + nxt
end
#takes a block and the first time around it's calling the block  1,2 (1+2) - collapses it to one value.
#1+2 = 3 and next num in array is 3 so 6 is the total.

