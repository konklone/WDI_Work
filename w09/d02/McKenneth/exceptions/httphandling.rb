require 'httparty'

path = "http://www.h4w5.co"

begin
  response = HTTParty.get(path)
  puts response.body
rescue SocketError => e
  puts e.message
  puts "Failed address: " + path
  print "Retry? {y OR n} : "
  choice = gets.chomp

  if choice == "y"
    retry 
  elsif choice == "n"
    print "new address: "
    path = gets.chomp
    retry
  end
end