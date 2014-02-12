classmates_strings =["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

classmates_strings.map do |x|
  #line.gsub(",", "|")
    y = x.split(',').join("|")
    puts y
end

classmates_strings.map do |x|
  y = x.split(",")
  puts "#{y[0]}'s favorite food is #{y[1]}"
end

classmates_strings.map do |x|
  y = x.split(",")
    puts "<ul>"
    puts "<li> #{y[0]}</li>"
    puts "<li> #{y[1]}</li>"
    puts "<li>#{y[2]}]</li>"
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

