s = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]

puts s.sample 

puts s.length 

puts s.index("Sal Lardizzone")

puts s[4]

puts s[0..23].join("|")

puts s.join(" | ")

s.each do |x| 
  if  "#{x}" == "Nichol Alexander"
  puts "Welcome to class #{x.upcase}"
  else 
  puts "Welcome to class #{x.capitalize!}\n" 
  end 
end  
