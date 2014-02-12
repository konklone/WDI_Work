##Array and Hash access

instructors = ["Peter", "PJ", "Jeff"]
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}


### Definitions End, Program Begins ###


# Using instructors array
puts "#{instructors[0]}"

instructors.push "Raleigh"
puts "#{instructors}"

instructors.shift
puts "#{instructors}"

# Using h hash
puts "#{h[1]}"

puts "#{h[:two]}"

puts "#{h["two"]}"

h[3] = "Three"
puts "#{h}"

h[:four] = 4
puts "#{h}"

h.delete(1)
puts "#{h}"
