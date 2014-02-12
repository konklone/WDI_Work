#1
true
#2
nil
#3
nil
#4
false
#5
true
#6
false
#7
nil

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

#1
users["Jeff"][:github]
#2
users["PJ"][:favorite_numbers] << 7
#3
users["Davis"] = 
#4
users["Peter"][:favorite_numbers]
#5
users["Jeff"][:favorite_numbers].min
#6
users["PJ"][:favorite_numbers].find_all(&:even?)
#7
users["Jeff"][:favorite_numbers] & users["Peter"][:favorite_numbers] & users["PJ"][:favorite_numbers]
#8
array = []
users.each_value do |v|
  v[:favorite_numbers].each { |n| array << n }
end
array.uniq!.sort!
#9
users["Peter"][:favorite_numbers][0] = "12"