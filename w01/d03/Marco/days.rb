puts "What day of the week is it today?"
  DOTW = gets.chomp.downcase

if DOTW == "m" 
  puts "If Garfield could get through his cases of the Mondays, so can you!"
elsif DOTW == ("t" || "tues" || "tuesday")
  puts "At least it's not Monday anymore!"
elsif DOTW == ("w" || "wed" || "wednesday")
  puts "Hump Day! You're halfway through the work week!"
elsif DOTW == ("th" || "thurs" || "thursday")
  puts "You look beautiful today. I can tell your sights are set on Friday!"
elsif DOTW == ("f" || "fri" || "friday")
  puts "TGIF! Just get through today and you're home-free!"
elsif DOTW == ("s" || "sat" || "saturday")
  puts "It's the weekend -- enjoy yourself!"
elsif DOTW == ("su" || "sun" || "sunday")
  puts "Sunday Funday!"
else 
  puts "Try Again!"

end