# #Morning Exercise

# ###More fun with Arrays & Hashes

# **Given the following data structure:**

# `is = {true => "It's true!", false => "It's false"}`

### && returns first falsey value
### || returns first truthy value

is = {true => "It's true!", false => "It's false"}
# # 1. What is the return value of is[2 + 2 == 4]?
# "It's true!"
# # 2. What is the return value of is["Peter" == "Jeff"]?
# "It's false"
# # 3. What is the return value of is[9 > 10]?
# "It's false"
# # 4. What is the return value of is[0]?
# nil
# # 5. What is the return value of is["PJ"]?
nil
# # 6. What is the return value of is[false||true]?
# "It's true!"
# # 6. What is the return value of is[false||"Jeff"]?
# "It's false"

# **Given the following data structure:**

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
users["Jeff"][:github]
# 2. How would you add the number 7 to PJ's favorite numbers?
users["PJ"][:favorite_numbers].push(7)
# 3. How would you add yourself to the users hash?
users["Tea"]={:github => "teabait", :favorite_numbers => [9, 25, 42]}
# 4. How would you return the array of Peter's favorite numbers?
users["Peter"][:favorite_numbers]
# 5. How would you return the smallest of Jeff's favorite numbers?
users["Jeff"][:favorite_numbers].min
# 6. How would you return an array of PJ's favorite numbers that are also even?
users["PJ"][:favorite_numbers].select {|n| n if n % 2 == 0}
# 7. How would you return an array of the favorite numbers common to all users?
(users["PJ"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["Peter"][:favorite_numbers])
# 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
(users["PJ"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["Peter"][:favorite_numbers]).sort
# 9. How would you change Peter's favorite number 12 into the string "12"?
users["Peter"][:favorite_numbers][0]= "12"