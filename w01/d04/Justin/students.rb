
students = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]


# - Write a program that:
#   - Prints the name of one random student
#   - Prints the number of students in the class
#   - Prints the index of "Sal Lardizzone"
#   - Prints the fifth person (In this case its David)
#   - Prints a list of all the student names on one line, with each name separated by a pipe: |

puts students.sample
puts "The number of students: #{students.count}"
puts students.index("Sal Lardizzone")
puts students[4]
puts students.join(" | ")