classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

new_array = classmates_strings.map do |line|
  line.gsub(',','|')
end

classmates_strings.each do |s|
  classmate = s.split(",")
  puts classmate[0].capitalize + "'s favorite food is " + classmate[1]
end

classmates_strings.each do |s|
  classmate = s.split(",")
  puts "<ul>"
  classmate.each do |info|
    puts "<li> #{info} </li>"
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


classmates_hashes.each do |classmate_hash|
  puts "#{classmate_hash[:name]}'s favorite food is #{classmate_hash[:food]}"
end


classmates_hashes.each do |classmate_hash|
  puts "<ul>"
  classmate_hash.each do |key,value|
    puts "<li> #{key.capitalize}: #{value} </li>"
  end
  puts "</ul>"
end


