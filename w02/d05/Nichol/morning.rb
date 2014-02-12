require "pry"

classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

# binding.pry

new_string = Array.new
new_classmates = Array.new

classmates_strings.each do |x|
	new_string = x.split(",")
	new_classmates << new_string.join("|")
end

puts classmates_strings
puts new_classmates

# def solution_with_map
# 	new_array = classmates_strings.map do |line|
# 		gsub(",", "|")
# 	end
# end


# Write a procedure that will print the following to the console:
# Brad's favorite food is Sushi
# David's favorite food is Burgers
# Tom's favorite food is Wings

def display_classmates_strings(array_of_strings)
	
	array_of_strings.each do |x|
		temp_array = Array.new
		temp_array = x.split(",")		
		name = temp_array[0]
		food = temp_array[1]
		github = temp_array[2]

		puts "#{name}'s favorite food is #{food}"
	end

end

display_classmates_strings(classmates_strings)

def display_txt(filename)
	my_file = File.new(filename, "r")
	puts my_file.read
	
	my_file.close

end

display_txt("html.txt")

#broke something here...
# def classmates_html(array_of_strings)
# 	temp_array = Array.new

# 	puts "<ul>"

# 	array_of_strings.each do |x|
# 		temp_array = x.split(",")

# 		name = temp_array[0]
# 		food = temp_array[1]
# 		github = temp_array[2]

# 		x.each do |y|
# 			puts "<li> #{y} </li>"
# 		end
# 	end

# 	puts </ul>

# end

classmates_html(classmates_strings)

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

classmates_hashes.each {|x| puts("#{x[:name]}'s favorite food is #{x[:food]}")}

display_txt("hashes.txt")

classmates_hashes.each do |x|
	puts "<ul>"
	puts "<li>Name: #{x[:name]} </li>"
	puts "<li>Food: #{x[:food]} </li>"
	puts "<li>github: #{x[:github]} </li>"
	puts "<ul>"
	#or use another .each and interpolate key and value
end



sorted = classmates_hashes.sort_by {|k| k[:food]}

puts sorted

