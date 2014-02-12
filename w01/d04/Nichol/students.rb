student_names = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]


def print_random_name(students)
	puts students.sample
end

def print_number_of_students(students)
	puts students.length
end

def print_index_of(students, name)
	puts students.index(name)
end

def print_student_number(students, number)
	puts students[number]
end

def format_student_names(students, formatter)
	puts students.join(formatter)
end


print_random_name(student_names)
print_number_of_students(student_names)
print_index_of(student_names, "Sal Lardizzone")
print_student_number(student_names, 4)
format_student_names(student_names, " | ")
