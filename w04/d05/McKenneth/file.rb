require 'pry'
require "active_record"
require 'pg'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "macadocious",
password: "",
database: "resto"
)
#########################################
class Restaurant < ActiveRecord::Base
end

############################################
t= File.new("/Users/macadocious/Desktop/sorted/WebExtract.txt", "r")

#t = File.open("/Users/macadocious/Downloads/dohmh_restaurant-inspections_002.txt", "r")

@array =[]
@array_2 = []
t.each do|lines| 
  @array << lines.gsub("\"", "").split(",")
end
@array.each do |one| 
  camis = one[0]
  name = one[1]
  boro = one[2]
  address = "#{one[3]} #{one[4]}, #{one[5]}" 
  phone = one[6]
  date = one[8]
  violation = one[10]
  points = one[11]
  current= one[12]
  @array_2 << [camis, name, boro, address, phone, date, violation, points, current]
end

for rest in @array_2
new_table = Restaurant.create(camis: rest[0], name: rest[1], boro: rest[2], address: rest[3], phone: rest[4], date_in: rest[5], violation: rest[6], points: rest[7], current: rest[8])
end



t.close