require 'httparty'
require 'json'
require 'pry'

name= "the room"
name = name.gsub(" ", "+")
url="http://www.omdbapi.com/?t=#{name}"

# t is the title

response = HTTParty.get(url)
# makes it a hash
parsed= JSON(response) 

puts parsed["Year"]
puts parsed["Poster"]
puts parsed["Title"]


