def how_are_you(name)
  puts "How are you #{name}"
  response = gets.chomp

  if response != "good"
    puts "Go eat some ice cream"
  else
    puts "You're awesome!!!!"
  end
end



