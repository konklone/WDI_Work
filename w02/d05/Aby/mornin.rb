classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

classmates_strings.map do |x|
	x.gsub(',', '|')
end

classmates_strings.each do |x|
	classmate = x.split(",")
	puts classmate[0].capitalize + "'s favorite food is " + classmates.capitalize
end

classmates_strings.each do |x|
	classmate = x.split(",")
	puts "<ul>"
	classmate.each do |y|
		puts "<li>" y "</li>"
	end
	puts "<ul>"
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

classmates_hashes.each do |hash|
	puts {hash[:name]} + "s favorite food is " + {hash[:food]}
end

classmates_hashes.each do |hash|
	puts "<ul>"
	hash.each do |key, value|
		puts "<li>" key + value "<li>"
	end
	puts <"/ul>"
end 