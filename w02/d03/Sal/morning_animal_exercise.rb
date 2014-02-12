random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.each do |animal|
	puts animal + "s"
end

random_animals.sort
random_animals.sort.reverse
random_animals.map {|animal| animal.reverse}
random_animals.sort_by {|x| animal.length } # OR random_animals.sort {|x,y| x.length <=> y.length }
random_animals.sort_by {|x| animal.split("").last}  #OR random_animals.sort_by {|animal| animal[-1]} 