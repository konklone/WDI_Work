is = {true => "It's true!", false => "It's false"}



puts [2 + 2 == 4]
puts ["Peter" == "Jeff"]


puts is[2 + 2 == 4]
puts is["Peter" == "Jeff"]
puts is[9 > 10]
puts is[0]
puts is["PJ"]
puts is[false||true]
puts is[false||"Jeff"]


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
users["PJ"][:favorite_numbers] << "7"
puts users["PJ"][:favorite_numbers]

# Adding me to the users array
users[:Tom] = {:tbrennan => "h543", :favorite_numbers => ["7", "17", '42']}
puts users

puts users["Peter"][:favorite_numbers]
jlow = users["Jeff"][:favorite_numbers]
puts jlow[0]

puts users["Jeff"][:favorite_numbers].min
#puts users["PJ"][:favorite_numbers].select {|x| x.even?}

# Giving us the "intersection" of arrays wihin hashes.  The intersection is all values they have in common
puts ((users["Jeff"][:favorite_numbers]) && users["PJ"][:favorite_numbers] && users["Peter"][:favorite_numbers])

#puts ((users["Jeff"][:favorite_numbers]) | users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers]).sort
puts users

puts users["Peter"][:favorite_numbers][0] = "12"
puts users["Peter"][:favorite_numbers]






