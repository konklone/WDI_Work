require 'httparty'

path = 'http://www.h4w5.co'

begin
  response = HTTParty.get(path)
  puts response.body

rescue SocketError => e
  puts e.message
  puts "failed address: " + path  

  retry

end