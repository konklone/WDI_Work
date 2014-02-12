# classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]
# ```
# * Write a procedure that will return the same array but with pipes(|) separating the values instead of commas. It should look like this:


classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

classmates_strings.map { |item|	item.gsub ',','|' }



classmates_strings.each {|item|
	array = item.split ","
	puts "#{array[0]}'s favorite food is #{array[1]} "
}


classmates_strings.each {|item|
	array = item.split ","
	puts "<ul>"	
	# puts "<li>#{array[0]}</li>"
	# puts "<li>#{array[1]}</li>"
	# puts "<li>#{array[2]}</li>"
	array.each { |info|
		puts "<li> #{info} </li>"
	}
	puts "</ul>"	
}


#------ Part 2

## Part 2 - Hashes in an array

# Given this array:

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
  }
]


# * Write a procedure that will print the following to the console:
# ```
# McKenneth's favorite food is Duck confit
# Aby's favorite food is Sushi
# Marco's favorite food is Ceviche
# ```
classmates_hashes.each {|item|
	puts "#{item[:name]}'s favorite food is #{item[:food]} "
}

puts "#################"
puts "#################"
puts "#################"
puts "#################"

# * Write a procedure that will print the following to the console:
classmates_hashes.each {|item|
	puts "<ul>"	
	item.each {|key,value|
		puts "<li>#{key}: #{value} </li>"
		}
	puts "</ul>"	
}

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