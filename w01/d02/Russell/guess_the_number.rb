puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

answer = gets.chomp.to_i

secret = rand(10)

while secret != answer

if answer > secret
      puts "Guess lower!"
      answer = gets.chomp.to_i
end
 elsif answer < secret
 	puts "Guess higher!"
 	answer = gets.chomp.to_i

 if answer == secret
 	puts "How did you know?"

 end

