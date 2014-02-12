random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

#Print out a plural version of each animal on a new line
random_animals.each do |i|
  puts i + "s"
end

#Return an array of the animals sorted alphabetically
puts random_animals.sort

#Return an array of the animals sorted 
#reverse alphabetically
puts random_animals.sort.reverse
#this will also work: random_animals.sort {|x,y| y<=>x}

#Return an array of the animals with each individual 
#string reversed
#.map returns a new array
random_animals.map do |i|
puts s.to_s
end
#below did not work:
# random_animals.each do |i|
#   puts i.split('').reverse
# end
# also will work: random_animals.join(" ").reverse.split.to_a

#Return an array of the animals sorted by word length 
#(low to high)
puts random_animals.sort_by do |i| i.length
end

#Return an array of the animals sorted alphabetically 
#by the last character in the string
puts random_animals.sort_by {|i| i.split("").last}
#another way: interesting
#random_animals.sort_by{|animal| animal[-1]}
# OR:  random_animals.sort {|x, y| x[x.length-1] <=> y[y.length-1]}
#OR: random_animals.sort{ |x, y| x.reverse <=> y.reverse}
