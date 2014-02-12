students = ["remy", "pj", "peter", "jeff"]

students.each do |x|
	if x == "pj"
		puts "Welcome to class #{x.upcase}\nit's great to have you!"
	else
		puts "Welcome to class #{x.capitalize}\nit's great to have you!"
	end

	puts "-----------------------------"
end
