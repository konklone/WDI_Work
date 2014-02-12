
classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

#Replace commas with pipes 
new_array  = classmates_strings.map do |line|
  line.gsub(',' , ' | ')
end
puts new_array  


classmates_strings.each do |s|
  classmate = s.split(",")
  puts classmate[0].capitalize + "'s favorite food is " + classmate[1]
end 
  
classmates_strings.each do |s|
    classmate = s.split(",")
    puts "<ul>" 
    puts "<li>#{classmate[0]}</li>"
    puts "<li>#{classmate[1]}</li>"
    puts "<li>#{classmate[2]}</li>"
    puts "<ul>" 
end 

#TO ITERATE METHOD ABOVE
classmates_strings.each do |s|
    classmate = s.split(",")
    puts "<ul>" 
    classmate.each do |info|
    puts "<li>#{info]}</li>"
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

classmates_hashes.each do |hclassmates_hash|
  puts "#{hash[:name]}'s favorite food is #{hash[:food]}."
end 

classmates_hashes.each do |classmates_hash|
  puts "<ul>"
  classmate_hash.each do |key, value|
    puts "<li>#{key}: #{value}</li>"
end 

