require 'httparty'

path = 'http://www.h4w5.com/'

begin
response = HTTParty.get(path)
puts response.body

rescue => e
  puts e.message
  puts "Failed address: " + path
  print "Retry or attempt new address? [r/n] "
  choice = gets.chomp

  if choice == "r"
    retry
  elsif choice == "n"
    print "New address! "
    path = gets.chomp
    retry
  end
end