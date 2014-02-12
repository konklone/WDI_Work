### Students 

student_names = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]

########### DEFINITIONS OVER, PROGRAM BEGINS ##############

  # Prints the name of one random student
  puts student_names.sample

  # Prints the number of students in the class
  puts student_names.length

  #Prints the index of "Sal Lardizzone"
  puts student_names.index("Sal Lardizzone")

  # Prints the fifth person (In this case its David)
  puts student_names[4]

  # Prints a list of all the student names on one line, with each name separated by a pipe: |
  puts student_names.join(" | ")