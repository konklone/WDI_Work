

classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

c_strings_array = classmates_strings.map { |element| element.gsub(",", "|")}

puts c_strings_array



classmates_strings.each do |s|
  classmates = s.split(",")
  puts classmates[0].capitalize + "'s favorite food is " + classmates[1]
end

# This could become cumbersome if you have long strings
# classmates_strings.each do |s|
#   classmate = s.split(",")#   puts "<ul>"
#   puts "<li> #{classmate[0]}"
#   puts "<li> #{classmate[1]}"
#   puts "<li> #{classmate[2]}"
#   puts "<ul>"
# end

# This is an iterator within an iterator
classmates_strings.each do |s|
  classmate = s.split(",")
  puts "<ul>"
    classmate.each do |info|
      puts "<li> #{info} <li>"
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
  puts "#{hash[:name]}'s favorite for is #{hash[:food]}"
end


# This is an iterator within an iterator
classmates_hashes.each do |classmate_hash|
  puts "<ul>"
    classmate_hash.each do |key,value|
      puts "<li> #{key.capitalize}: #{value} <li>"
    end
    puts "<ul>"
end













