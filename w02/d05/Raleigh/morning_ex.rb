### Part 1 ###

classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

# Write a procedure that will return the same array but with pipes(|) separating the values instead of commas. 
new_array = classmates_strings.map {|s| s.gsub(",", "|")}

# Write a procedure that will print the following to the console:

# Brad's favorite food is Sushi
# David's favorite food is Burgers
# Tom's favorite food is Wings

classmates_strings.each do |s|
   mate = s.split(",")
   puts mate[0].capitalize + "'s favorite food is " + mate[1].capitalize
end


# Write a procedure that will print the following to the console:

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

classmates_strings.each do |s|
   mate = s.split(",")  
   puts "<ul>"
   puts "<li>#{mate[0]}</li>"
   puts "<li>#{mate[1]}</li>"
   puts "<li>#{mate[2]}</li>"
   puts "</ul>"
end

#MORE DRY: You're not manually typing each data point
classmates_strings.each do |s|
   mate = s.split(",") 
   puts "<ul>"
   mate.each do |data| 
      puts "<li>#{data}</li>"
   end
   puts "</ul>"
end


### Part 2 ###

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

# McKenneth's favorite food is Duck confit
# Aby's favorite food is Sushi
# Marco's favorite food is Ceviche

classmates_hashes.each do |h|
   puts "#{h[:name]}'s favorite food is #{h[:food]}."
end

#  Write a procedure that will print the following to the console:

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
   hash.each do |k,v| 
      puts "<li>#{k.capitalize}: #{v}</li>"
   end
   puts "</ul>"
end

### Bonus ###

# If you finish early, try to figure out how to print the output sorted alphabetically by favorite food. For example, for the classmates_strings array, the output should look like this:

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

