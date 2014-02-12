puts "Please enter a day of the week"
days = gets.chomp.downcase
  case days
   when "monday"
    puts "Everyone Hate you #{days}"
  when "tuesday"
    puts "Ooo #{days} you still suck!"
  when "wednesday"
    puts "Its #{days} just 2 more! suck it up"
  when "thursday"
    puts "Its #{days} almost TIME for the weekend!"
  when  "friday"
      puts "TGIF!"
  when "saturday"
    puts "PARTYY TIME its #{days}"
  when "sunday"
    puts "FMLLLL im hungover its #{days} "
  else
    puts "You didn't choose a day of the week "
  end



