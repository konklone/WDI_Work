require 'httparty'
require 'json'
require 'pry'


name = "the room"

name = name.gsub(" ","+")

url = "http://www.omdbapi.com/?t=#{name}"

response = HTTParty.get(url)
parsed = JSON(response)

puts parsed["Year"]
puts parsed["Poster"]
puts parsed["Title"]

binding.pry

#name is going to be in params

# require 'httparty'
# require 'json'
# require 'pry'

# # name = "no country for old men"

# name = params[:title].gsub(" ", "+")

# url = "http://www.omdbapi.com/?t=#{name}"

# response = HTTParty.get(url)
# parsed = JSON(response)

# # puts parsed["Year"]
# # puts parsed["Poster"]
# # puts parsed["Title"]