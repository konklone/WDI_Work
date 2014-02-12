require 'httparty'

response = HTTParty.get('http://www.h4w5.com/')
puts response.body
