require 'httparty'

path = 'http://www.h4w5.co'

begin # exception handling block
  response = HTTParty.get(path)
  puts response.body

rescue SocketError => e # rescue from a specific exception
  puts e.message

  puts "Failed address: " + path
  print "Retry or attempt new address? [r/n] "
  choice = gets.chomp

  if choice == "r"
    retry # jumps to the beginning of THIS exception handling block
  elsif choice == "n"
    print "New address: "
    path = gets.chomp
    retry
  end

end # exception handling block