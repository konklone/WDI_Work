require 'pry'
require 'pry-debugger'

#######arrays

a = ["peter", "pj", "jeff"]

peter_string = a[0]
puts peter_string

a << "nichol"
puts a

a.delete "pj"
puts a


########hash

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

binding.pry

puts "#{h[1]}"
puts "#{h[:two]}"
puts "#{h["two"]}"

h[3] = "three"
puts "#{h[3]}"

h[:four] = 4
puts "#{h[:four]}"

h.delete(1)

puts h