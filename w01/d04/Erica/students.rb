student_array = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]
puts student_array.sample(1)
puts "The number of students in the class is #{student_array.sample(1)}"
puts student_array.length.to_s
puts student_array.index("Sal Lardizzone")
puts student_array.fetch(4)
puts student_array.join(" | ")

