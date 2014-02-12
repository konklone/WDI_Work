# Movies API
require 'httparty'
require 'json'
require 'pry'

name = "the lion king"
# to make query string functional
name = name.gsub(" ","+")
# params[:title].gsub(" ","+")	

# query string for title
# url = "http://www.omgdbapi.com/?t=the+lion+king"
url = "http://www.omdbapi.com/?t=#{name}"

response = HTTParty.get(url)
parsed = JSON(response)

binding.pry