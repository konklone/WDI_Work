
students = ["remy the dog", "pj", "jeff", "peter"]

# students.each {|name| puts "Welcome to class! \n#{name}, it's great to have you!"}

students.each do |name| 
	if name != "pj"
		puts "Welcome to class! \n#{name.capitalize}, it's great to have you!"
	else
		puts "Welcome to class! \n#{name.upcase}, it's great to have you!"
	end
end