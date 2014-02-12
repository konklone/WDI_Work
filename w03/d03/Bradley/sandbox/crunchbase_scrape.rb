file = File.new("companies.txt", "a+")
file[0..10].each do |line|
  puts line
end

file.close