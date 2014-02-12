require 'faker'
require_relative 'user'

user_hash = Hash.new 

for x in 1..50 do |x| 
  t_id = x 
  t_name = Faker::Name.name 
  t_street = Faker::Address.street_address
  t_email = Faker:: Internet.email 
  user_object = User.new(t_id, t_name, t_street, t_email)
  user_hash[t_id] = user_object 
end 

#can also put 

(1..50).each do |n| 
  t_id = n 
  t_name = Faker::Name.name 
  t_street = Faker::Address.street_address
  t_email = Faker:: Internet.email 
  user_object = User.new(t_id, t_name, t_street, t_email)
  user_hash[t_id] = user_object 
end 