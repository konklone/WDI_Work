

is = {true => "It's true!", false => "It's false"}

puts is[2 + 2 == 4]

puts is["Peter" == "Jeff"]

puts is[9 > 10]

puts is[0] #comes to `nil` bc 0 is not a key in the hash

puts is["PJ"] #comes to `nil`

#puts is[true]

puts is[false||true]

puts is[false||"Jeff"] #comes to `"nil"`

#puts false||"Jeff" 

#puts true||"Jeff"

#puts "Jeff"||false

users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75],
      },
      "PJ" => {
        :github => "h4w5",
        :favorite_numbers => [8, 12, 24],
      },
      "Jeff" => {
        :github => "jkonowitch",
        :favorite_numbers => [12, 14, 85],
      },
    }

puts users["Jeff"][:github]

puts users["PJ"][:favorite_numbers] << 7

puts users["Marco"] = {:github => "mpvazquez", :favorite_numbers => [7,23,99]}

puts users["Peter"][:favorite_numbers]

puts users["Jeff"][:favorite_numbers].min

puts users["PJ"][:favorite_numbers].select {|num| num.even?}

puts ((users["Peter"][:favorite_numbers] & users["PJ"][:favorite_numbers]) & users["Jeff"][:favorite_numbers])

puts (users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers]).sort

puts users["Peter"][:favorite_numbers][0] = "12"

# you can also use: 
#  users["Peter"][:favorite_numbers].each do |x|
#   if x == 12
#     users["Peter"][:favorite_numbers].index(x) = x.to_s
#   end
# end

puts users

