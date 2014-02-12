is = {true => "It's true!", false => "It's false"}

# 1. What is the return value of is[2 + 2 == 4]?

#"It's true!"
puts "#{is[2 + 2 == 4]}"

# 2. What is the return value of is["Peter" == "Jeff"]?

#"It's false!""
puts "#{is["Peter" ==  "Jeff"]}"

# 3. What is the return value of is[9 > 10]?

#"It's false!"
puts "#{is[9 > 10]}"

# 4. What is the return value of is[0]?

#nil, there is no 0 key
puts is[0]

# 5. What is the return value of is["PJ"]?

# nil
puts is["PJ"]

# 6. What is the return value of is[false||true]?

#"It's true!"
puts is[false||true]

# 6. What is the return value of is[false||"Jeff"]?

#nil because will choose the specified string over boolean false
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

# 1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?

puts users["Jeff"][:github]

# 2. How would you add the number 7 to PJ's favorite numbers?
users["PJ"][:favorite_numbers].push(7)
#could also do this with << 7
puts users["PJ"][:favorite_numbers]

# 3. How would you add yourself to the users hash?

users["David"] = {github: "dtothefp", favorite_numbers: [12, 24, 60]}

# 4. How would you return the array of Peter's favorite numbers?

users["Peter"][:favorite_numbers]

# 5. How would you return the smallest of Jeff's favorite numbers?

users["Jeff"][:favorite_numbers].min

# 6. How would you return an array of PJ's favorite numbers that are also even?

users["PJ"][:favorite_numbers].select {|x| x.even?}

# even_numbers = []
# users["PJ"][:favorite_numbers].each do |x|
#   if x % 2 == 0
#     users["PJ"][:favorite_numbers]

#   end
# end

# 7. How would you return an array of the favorite numbers common to all users?

# single & finds the intersection
((users["Peter"][:favorite_numbers] & users["PJ"][:favorite_numbers]) & users["Jeff"][:favorite_numbers])

# users.each do |key,hash|
#   hash[:favorite_numbers].each do |array|
#     num1 = array[0]
#     num2 = array[1]
#     num3 = array[2]
#   end
# end

# 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

# the single | pipe puts all array contents in one array, sorts, and removes duplicates
(users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers]).sort

#can also create a new array with the 3 arrays in it and use method .flatten.  Then sort and use the method .uniq to remove duplicates.

# 9. How would you change Peter's favorite number 12 into the string "12"?

users["Peter"][:favorite_numbers].each do |x|
  if x == 12
    y = users["Peter"][:favorite_numbers]
    y.index(x) = x.to_s
  end
end