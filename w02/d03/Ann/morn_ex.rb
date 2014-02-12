random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.map {|x| x + "s \n"}

# Return an array of the animals sorted alphabetically
random_animals.sort 

# Return an array of the animals sorted reverse alphabetically
random_animals.sort {|x, y| y <=> x }

# Return an array of the animals with each individual string reversed
random_animals.map {|a| a.reverse + "\n"}
#.map (gives you an array back) vs .each (returns the original array)

# Return an array of the animals sorted by word length (low to high)
random_animals.sort_by {|x| x.length}

# Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by {|x| x.split("").last}
#split 
#could also do random_animals.sort_by {|animal| animal[-1]}
sorts by the last letter in the elements of the array  



random_animals 
#how do you use sort_by? 



