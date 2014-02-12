students = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]

#printsa random student
puts "And your random student ISssss: #{students.sample}"
#print random_student= students.sample(1)

#Prints the number of students in the class
puts "The number of students in class is: #{students.length}"

#Prints the index of "Sal Lardizzone"
#or puts students.index("Sal Lardizzone")


#Prints the fifth person (In this case its David)
puts students[4]

#Prints a list of all the student names on one 
#line, with each name separated by a pipe: |
#or puts students.join("|") 
#above is much nicer
students.each do |student|
	print student + "|"
end

