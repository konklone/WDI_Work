classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

new_array = classmates_strings.map do |line|
 	line.gsub(",","|") 
end

classmates_strings.each do |s|
	classmate = s.split(",")
	puts classmate[0].capitalize + "'s favorite food is " + classmate[1]
end

classmates_strings.each do |s|
	classmate = s.split(",")
	puts "<ul>"
	puts "<li>#{classmate[0]} </li>"
	puts "<li>#{classmate[1]} </li>"
	puts "<li>#{classmate[2]} </li>"
	puts "<ul>"
end

#OR 
classmates_strings.each do |s|
 	classmate = s.split(",")
	puts "<ul>"
	classmate.each do |info|
		puts "<li>#{info}</li>"
	end
 	puts "<ul>"
 end


 classmates_hashes.each do |hash|
 	puts "#{hash[:name]}'s favorite food is #{hash[:food]}"
 end


classmates_hashes.each do |classmate_hash|
	puts "<ul>"
	classmate_hash.each do |key, value|
		puts "<li>#{key.to_s}: #{value}</li>"
	end
 	puts "<ul>"
 end

