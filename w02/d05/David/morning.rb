classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

# * Write a procedure that will return the same array but with pipes(|) separating the values instead of commas. It should look like this:

piped_classmates = classmates_strings.map do |line|
  line.gsub(",","|")
end

#or use destructive technique

classmates_strings.each do |line|
  line.gsub!(",","|")
end

# * Write a procedure that will print the following to the console:

# ```
# Brad's favorite food is Sushi
# David's favorite food is Burgers
# Tom's favorite food is Wings

classmates_strings.each do |x|
 classmate = x.split(",")
 name = classmate[0]
  food = classmate[1]
  puts "#{name.capitalize}'s favorite food is #{food}"
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

classmates_strings.each do |x|
 classmate = x.split(",")
  puts "<ul>"
  classmate.each do |y|
    puts "<li> #{y} </li>"
  end
  puts "</ul>"
end


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

# Write a procedure that will print the following to the console:

# ```
# McKenneth's favorite food is Duck confit
# Aby's favorite food is Sushi
# Marco's favorite food is Ceviche

classmates_hashes.each do |x|
  name = x[:name]
  food = x[:food]
  puts "#{name}'s favorite food is #{food}"
end

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


classmates_hashes.each do |hash|
puts "<ul>"
  hash.each do |key, value|
    puts "<li> #{key.capitalize}: #{value} </li>"
  end
  puts "</ul>"
end
