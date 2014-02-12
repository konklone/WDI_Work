students = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]

puts "Random student name: #{students.sample}"
puts "Number of students in the clase #{students.length}"
puts "The index of Sal Lardizzone: #{students.index("Sal Lardizzone")}"
puts "The 5th person in the class is: #{students[4]}"
puts students.join(" | ")


#other optioin for .join --- overcomplicated
iterator = 0 
while iterator < students.length
  if iterator != students.length.to_i - 1
    print students[iterator] + " | "
  else
    print students[iterator]
  end
  iterator = iterator + 1
end