students = ["remy the dog", "pj", "jeff", "peter"]

students.each do |person| 

  if person == "pj"
    puts "Welcome to class!\n #{person.upcase}, it's great to have you!\n "

  else 
    person.capitalize
    puts "Welcome to class!\n #{person.capitalize}, it's great to have you!\n "
  end

end