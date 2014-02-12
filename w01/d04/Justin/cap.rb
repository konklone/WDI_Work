# "welcome to class!"
# name of student, it's great to have you"
# " "
#"________________________________________"
# capitalize all names, PJ requires a different method

students =["remy the dog", "pj", "jeff", "peter"]

students.each do |value|
	if value == "pj"
		puts "welcome to class!"
		puts "#{value.upcase}, it's great to have you!"
		puts " "
		puts "________________________________________"
	else
		puts "welcome to class!"
		puts "#{value.capitalize}, it's great to have you!"
		puts " "
		puts "________________________________________"
	end
	
end