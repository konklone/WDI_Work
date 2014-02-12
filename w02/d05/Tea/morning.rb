classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

new_array = classmates_strings.map {|line| line.gsub(',','|')}

# returns ["brad|sushi|bpuder0120", "david|burgers|dtothefp", "tom|wings|tommyb67"]

classmates_strings.each do |s|
  # takes each classmate string and turns the items into it into an array
  # ["brad,sushi,bpuder0120", "david,burgers,dtothefp", "tom,wings,tommyb67"]
  # each item becomes transformed like this
  # ["brad", "sushi", "bpuder0120"]
  classmates= s.split(",")
  puts "#{classmates[0].capitalize}'s favorite food is #{classmates[1]}"
end

classmates_strings.each do |s|
  classmates= s.split(",")
  puts "<ul>"
  classmates.each do |info_item|
    puts"<li>#{info_item}</li>"
  end
    puts "</ul>"
end
  # puts "<ul>"
  # puts "<li>#{classmates[0]}</li>"
  # puts "<li>#{classmates[1]}</li>"
  # puts "<li>#{classmates[2]}</li>"
  # puts "</ul>"
# end

classmates_hashes.each do |hash|
  puts "#{hash[:name]}'s favorite food is #{hash[:food]}"
end

classmates_hashes.each do |classmate_hash|
  puts "<ul>"
  
  classmate_hash.each do |key,value|
    puts "<li>#{key.to_s.capitalize}: #{value}</li>"
  end
  
  puts "<ul>"
end

