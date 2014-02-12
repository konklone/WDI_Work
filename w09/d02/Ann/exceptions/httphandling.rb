require 'httparty'

begin 
response = HTTParty.get('http://www.h4w5.com/')
puts response.body

rescue SocketError => e 
  puts e.message 
  puts "Failed address: " + path 
  print "Retry or attempt new address?[r/n]"
  choice = gets.chomp

  if choice == "r"
    retry 
  elsif chioce == "n"
    print n 
  end 

