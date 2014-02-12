require 'citibikenyc'
require 'pry'
require 'geocoder'

# citibike api
# https://rubygems.org/gems/citibikenyc
# http://rubygems.org/gems/citibike

# ruby timer gem
# http://langfeld.me/a-countdown-latch-in-ruby.html
# https://github.com/benlangfeld/countdownlatch


# CORE ALGORITHM
# Awesome Citi
# given a user's lat/long
# given the lat/long of all citibike stations
# return closest station that is available 

# user's coordinates
# full documetnation: http://www.w3schools.com/html/html5_geolocation.asp
# test link with code: http://www.w3schools.com/html/tryit.asp?filename=tryhtml5_geolocation_watchposition

# in pry, pp Citibikenyc.branches to see id, long/lat and address
# to get the distance between two long/lats, use the pythagorean theorem:
# (x,y, x2, y2)
# x - x2 = |a|
# y - y2 = |b|
# square root of (a squared + b +squared) = distnace. 

# work with the arrays of longs and lats to set numbers equal to instance variables @x, @x2, @y, @y2

form_answer = address
 s = Geocoder.coordinates("5961 Chula Vista Way, Los Angeles, CA 9068")


convert address into latitude, longitude = destination_coordinates

lat = "Latitude: 40.6997024"
long = "Longitude: -73.92961609999999"

lat.slice!("Latitude: ")
@x = lat.to_f

long.slice!("Longitutde: ")
 @y = long.to_f

Citibikenyc.branches.values[2].each do |x| @x2 =  x.values[1]
end

Citibikenyc.branches.values[2].each do |x| @y2 =  x.values[2]
end


def distance(@x,@x2,@y,@y2)
Math.sqrt(( @x - @x2)**2 + (@y - @y2)**2)
end

cb_ll_list = [10,12,13]

def get_station(user_ll, cb_ll_list)
  cb_ll_list.min_by do |station| station.distance
  return citibike::id 
end

# bonus:
# http://activemerchant.org/

40.7086647301912
-74.0108752995729

