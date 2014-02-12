 students = ["remy the dog", "pj", "jeff", "peter"]

students.each do |x|
   if x != "pj"
    puts "Welcome to class\n#{x.capitalize}, its great to have you"
   else puts "Welcome to class\n#{x.upcase}, its great to have you"
   end
end