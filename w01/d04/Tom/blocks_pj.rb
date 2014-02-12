students = ["remy the dog", "pj", "jeff"]

students.each do |x|
  puts "Welcome to class!"

  if x == "pj"
    puts x.upcase
  else
    puts x.capitalize
  end

end

#this is how you my see loops in other languages
for x in students do
   puts x
end

# This is Ruby's enumeration, which is much simplier and more powerful
students.each { |x| puts x }

