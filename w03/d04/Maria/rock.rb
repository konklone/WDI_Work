puts "Choose (R)ock, (P)aper, (S)cissors"
answer = gets.chomp.downcase

rock = "1"
scissors = "2"
paper = "3"
  
items = Random.new
items.rand(3).to_s

case answer
when "r"

if items == "1" && answer == "r"
  puts "You Win!"
else puts "You Looooose"

end
end


# case answer
# when answer == "R" && items == rock
#   puts "yay"
# else "no"
# end
