classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

# classmates_strings.map do |string|
# 	ary = string.split(",")
# 	ary.join("|")
# end

# That works, but THIS is better:
classmates_strings.map do |string|
	string.gsub( ",", "|" )
end

classmates_strings.each do |string|
	ary = string.split(",")
	puts "#{ary[0].capitalize}'s favorite food is #{ary[1].capitalize}."
end

classmates_strings.each do |string|
	ary = string.split(",")
	puts "<ul>"
	ary.each do |elem|
		puts "<li>#{elem}</li>"
	end
	puts "</ul>"
end

##########################################
###########       PART 2      ############
##########################################

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

classmates_hashes.each do |hash|
	puts "#{hash[:name]}'s favorite food is #{hash[:food]}."
end

classmates_hashes.each do |hash|
	puts "<ul>"
	hash.each do |k,v|
		puts "<li>#{k.capitalize}: #{v}</li>"
	end
	puts "</ul>"
end

##########################################
###########       BONUS       ############
##########################################

sorted_strings = classmates_strings.sort {|a,b| a.split(",")[1] <=> b.split(",")[1] }
sorted_strings.each do |string|
	ary = string.split(",")
	puts "<ul>"
	ary.each do |elem|
		puts "<li>#{elem}</li>"
	end
	puts "</ul>"
end

sorted_hashes = classmates_hashes.sort { |a,b| a[:food] <=> b[:food] }
sorted_hashes.each do |hash|
	puts "<ul>"
	puts "<li>Name: #{hash[:name]}</li>"
	puts "<li>Food: #{hash[:food]}</li>"
	puts "<li>Github: #{hash[:github]}</li>"
	puts "</ul>"
end
