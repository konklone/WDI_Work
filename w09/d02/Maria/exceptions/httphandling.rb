require 'httparty'

path = ('http://www.h4w5.com/')

begin
response = HTTParty.get(path)
puts response.body

rescue SocketError=> e
  puts e.message
  print "Failed address" + path
  puts "Retry o attempt new address? [r/n]"
  choice = gets.chomp

  if choice == "r"
    retry
  elsif choice == "n"
    print "New address: "
    path = gets.chomp
    retry
  end
end
