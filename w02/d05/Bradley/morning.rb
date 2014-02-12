classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

arr = []

new_arr = classmates_strings.each do |s|
  s.gsub(',', '|')
end


classmates_strings.each do |s|
  classmates = s.split(",")
  puts "#{classmates[0].capitalize}'s favorite food is #{classmates[2]}"
end

classmates_strings.each do |s|
  classmates = s.split(",")
  puts "<ul>"
  puts "<li>#{classmates[0]}</li>"
  puts "<li>#{classmates[1]}</li>"
  puts "<li>#{classmates[2]}</li>"
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

classmates_hashes.each do |hash|
  puts "#{hash[:name]}'s favorite food is #{hash[:food]}"
end