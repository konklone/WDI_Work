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
  puts "<ul>"
  classmate_hash.each do |key, value|
    puts "<li> #{key.capitalize}: #{value} </li>"
  end
  puts " #{classmate_hash[:name]}'s favorite food is #{classmate_hash[:food]}"
end



