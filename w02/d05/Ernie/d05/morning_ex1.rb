classmates_strings = 
["brad,sushi,bpuder0120","david,burgers,dtothefp",
  "tom,wings,tommyb67"]


new_array = classmates_strings.map do |line|
  line.gsub(',' , '|')
end

classmates_strings.each do |s|
  classmates = s.split(",")
  puts classmates[0].capitalize + "'s favorite food is" + classmates[1]

  classmates_strings.each do |s|
    classmates = s.split(",")
puts "<ul>"
  classmates.each do |info|
    puts "<li> #{info} </li>"
    end
  end

  classmates_hash.each do |hash|
    puts "#{hash[:name] favorite food is "#{hash[:food]}" }"
  end

  classmates_hash.each do |hash|
    puts "<ul>"
  classmates_hash.each do |key,value|
    puts "<li> #{key.to_s}: #{value}</li>"
    end
  end
