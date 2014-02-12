# App will allow you to find if your friends are
# on the top three social networks, Twitter, LinkedIn
# or Facebook. If they are, it will allow you to follow 
# them there.

users = {}

puts "*** Welcome to the Findr Web App***"
puts "Who would you like to find?"

user[:name] = gets.chomp
user[:platforms] = {}
 
# username
# => {:name => "Aby", :platforms => { } }
 
social_platforms = [:twitter, :linkedin, :facebook]
 
social_platforms.each do |platform|
	puts "What's your username at #{platform.to_s}?"
	user[:platforms][platform] = gets.chomp
	puts 
end
 
puts user
 
 def menu
  puts '1 : Find someone on Twitter'
  puts '2 : Find someone on Facebook'
  puts '3 : Find someone on LinkedIn'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end

 
# Call the menu method.
response = menu

# program loop
while response != 'q'
  case response
  
  when '1'
  end

   
  when '2'
  end

   
  
  when '3'
  end




  # end
  # display menu again and get a new response
  end
  response = menu
end
