# For the following array, how would I...

# ```
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
# ```
# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.each {|i| puts i +"s"}
# * Return an array of the animals sorted alphabetically
random_animals.sort
# * Return an array of the animals sorted reverse alphabetically
random_animals.sort.reverse
# * Return an array of the animals with each individual string reversed
random_animals.join(" ").reverse.split.to_a
# * Return an array of the animals sorted by word length (low to high)
random_animals.sort_by{|x| x.size}
# * Return an array of the animals sorted alphabetically by the last character in the string
random_animals.join(" ").reverse.split.to_a.sort.map {|x| x.reverse}
