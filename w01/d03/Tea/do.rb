students.each do |x|
  if x == "pj"
    puts "Welcome to class.\n #{x.upcase}. It's great to have you.\n----------------\n" 
  else  
    puts "Welcome to class, \n#{x.capitalize}. It's great to have you.\n----------------\n"  
  end 
end


#cleaned up version

students.each do |x|
  new_x = x.capitalize
  
  if x == "pj" 
    new_x = x.upcase
  end
  
  puts "Welcome to class.\n #{new_x}. It's great to have you.\n----------------\n" 
end

if new_x == "pj" 

#boolean ? do_if_true : do_if_false


students.each { |x| puts "welcome to class.\n#{x == 'pj' ? x.upcase : x.capitalize} It's great to have you.\n----------------\n" " }