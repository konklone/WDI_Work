#1. true
# 2. false
# 3. false
# 4. true -- FALSE - is[0] is looking for key 0, which does not exist
# 5. FALSE
# 6. true
# 7. NIL

users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75],
      },
      "PJ" => {
        :github => "h4w5",
        :favorite_numbers => [8, 12, 24,35],
      },
      "Jeff" => {
        :github => "jkonowitch",
        :favorite_numbers => [12, 14, 85],
      },
    }

puts users["Jeff"][:github]
  users["PJ"][:favorite_numbers] << 7
users["PJ"][:favorite_numbers]
  users["McKenneth"] = {}
users["Peter"][:favorite_numbers]
users["Jeff"][:favorite_numbers].min
users["PJ"][:favorite_numbers].select {|num| num.even?}
(users["Peter"][:favorite_numbers] & users["PJ"][:favorite_numbers]) & users["Jeff"][:favorite_numbers]
new_array = users["Peter"][:favorite_numbers] , users["PJ"][:favorite_numbers], users["Jeff"][:favorite_numbers]
puts new_array.flatten!.uniq.sort
#users["Peter"][:favorite_numbers] | users["PJ"][:favorite_numbers] | users["Jeff"][:favorite_numbers].sort
users["Peter"][:favorite_numbers][0] = "12"
