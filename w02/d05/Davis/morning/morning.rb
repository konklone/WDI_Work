classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]
classmates_strings.map { |string| string.gsub(",","|") }
classmates_strings.each do |string|
	a = string.split(",")
	puts "#{a[0].capitalize}'s favorite food is #{a[1].capitalize}"
end

classmates_strings.each do |string|
	a = string.split(",")
	puts "#{a[0]}"
	puts "#{a[1]}"
	puts "#{a[2]}"
	puts ""
end

# classmates_strings.each do |string|
# 	a = string.split(",")
# 	a.each { |word| puts word }
# end

a = classmates_strings.sort_by { |string| string.split(",")[1] }
a.each do |string|
	a = string.split(",")
	puts "#{a[0]}"
	puts "#{a[1]}"
	puts "#{a[2]}"
	puts ""
end

# a = classmates_strings.sort_by { |string| string.split(",")[1] }
# a.each do |string|
# 	b = string.split(",")
# 	b.each { |word| puts word }
# end

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
	puts "#{hash[:name].capitalize}'s favorite food is #{hash[:food].capitalize}"
end

classmates_hashes.each do |hash|
	puts "Name: #{hash[:name].capitalize}"  
	puts "Food: #{hash[:food].capitalize}"
	puts "Github: #{hash[:github].capitalize}"
	puts ""
end
