classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

# Write a procedure that will return 
# the same array but with pipes(|) separating the 
# values instead of commas.

classmates_strings.each do |string|
puts string.split(",").join("|")
end

# BETTER is below because it returns it in a new array .each always gives same array you started with!
newArray = classmates_strings.map do |line|
  line.gsub(',', '|')
end

puts ""
puts ""
# Write a procedure that will print 
# the following to the console:
# Brad's favorite food is Sushi
# David's favorite food is Burgers
# Tom's favorite food is Wings
  classmates_strings.each do |string|
  classmate = string.split(",")
  puts classmate[0].capitalize + "'s favorite food is " + classmate[1]
end
# * Write a procedure that will print the following to the console:

# ```
# <ul>
# <li>brad</li>
# <li>sushi</li>
# <li>bpuder0120</li>
# </ul>
# <ul>
# <li>david</li>
# <li>burgers</li>
# <li>dtothefp</li>
# </ul>
# <ul>
# <li>tom</li>
# <li>wings</li>
# <li>tommyb67</li>
# </ul>
# ```
classmates_strings.each do |s|
  classmate = s.split(",")
  puts "<ul>"
  puts "<li> #{classmate[0]} </li>"
  puts "<li> #{classmate[1]} </li>"
  puts "<li> #{classmate[2]} </li>"
  puts "<ul>"
end
# refacter above:

classmates_strings.each do |s|
  classmate = s.split(",")
  puts "<ul>"
  classmate.each do |info|
  puts "<li> #{info} </li>"
  end
  puts "<ul>"
end




# ## Part 2 - Hashes in an array

# Given this array:

# ```
classmates_hashes = [
   { :name => "McKenneth",
    :food => "Duck confit",
    :github => "DrRobotmck"
  },
  { :name => "Aby",
    :food => "Sushi",
    :github => "abzilla"
  },
  { :name => "Marco",
    :food => "Ceviche",
    :github => "mpvazquez"
  },
]

# * Write a procedure that will print the following to the console:

# ```
# McKenneth's favorite food is Duck confit
# Aby's favorite food is Sushi
# Marco's favorite food is Ceviche
# ```
classmates_hashes.each do |hash|
  puts "#{hash[:name]}'s favorite food is #{hash[:food]}"
# ```
# * Write a procedure that will print the following to the console:

# ```
# <ul>
# <li>Name: McKenneth</li>
# <li>Food: Duck confit</li>
# <li>Github: DrRobotmck</li>
# </ul>
# <ul>
# <li>Name: Aby</li>
# <li>Food: Sushi</li>
# <li>Github: abzilla</li>
# </ul>
# <ul>
# <li>Name: Marco</li>
# <li>Food: Ceviche</li>
# <li>Github: mpvazquez</li>
# </ul>
# ```
classmates_hashes.each do |classmates_hash|
  puts "<ul>"
  classmate.each do |key,value|
  puts "<li> #{key.capitalize}: #{value} </li>"
  end
  puts "<ul>"
end
# ## Bonus
# * If you finish early, try to figure out how to 
# print the output sorted alphabetically by favorite 
# food. For example, for the classmates_strings 
# array, the output should look like this:

# ```
# <ul>
# <li>david</li>
# <li>burgers</li>
# <li>dtothefp</li>
# </ul>
# <ul>
# <li>brad</li>
# <li>sushi</li>
# <li>bpuder0120</li>
# </ul>
# <ul>
# <li>tom</li>
# <li>wings</li>
# <li>tommyb67</li>
# </ul>
# ```
# Where "burgers" comes before "sushi" comes before "wings"
