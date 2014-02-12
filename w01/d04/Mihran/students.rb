# #Morning Exercise

# ### Students
# - Create a file called students.rb
# - Here is an array containing all your names
# ```
# ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]
# ```
# - Write a program that:
#   - Prints the name of one random student
#   - Prints the number of students in the class
#   - Prints the index of "Sal Lardizzone"
#   - Prints the fifth person (In this case its David)
#   - Prints a list of all the student names on one line, with each name separated by a pipe: |


students = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]
puts "A random student from the class is #{students.sample}."
puts "There are #{students.count} students in the class."
puts "Sal Lardizzone's index is #{students.index("Sal Lardizzone")}"
puts "The fifth student is #{students[4]}"
puts students.join(" | ")