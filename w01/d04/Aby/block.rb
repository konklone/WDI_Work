students = ["remy", "pj", "rufus"]

students.each do |x|
	if x == "pj"
		puts "welcome to class #{x.upcase}"
	else
		puts "welcome to class #{x.capitalize}"
	end
end