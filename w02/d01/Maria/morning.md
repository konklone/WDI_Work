#Morning Exercise

###More fun with Arrays & Hashes

**Given the following data structure:**

`is = {true => "It's true!", false => "It's false"}`

1. What is the return value of is[2 + 2 == 4]?
true

2. What is the return value of is["Peter" == "Jeff"]?
false

3. What is the return value of is[9 > 10]?
false

4. What is the return value of is[0]?
nil because 0 is not a key in the hash (if you use the hash above.)

5. What is the return value of is["PJ"]?
nil

6. What is the return value of is[false||true]?
true (returns the last value that is true)

6. What is the return value of is[false||"Jeff"]?
"Jeff" (returns the last value that is true)

**Given the following data structure:**

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

1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?
users["jeff"][:github]

2. How would you add the number 7 to PJ's favorite numbers?
users["PJ"][:favorite_numbers].push(7)

3. How would you add yourself to the users hash?
users["maria"] = {:github => "pistachiopony", :favorite_numbers => [3,6,9]}

4. How would you return the array of Peter's favorite numbers?
users["peter"[:favorite_numbers]

5. How would you return the smallest of Jeff's favorite numbers?
users["Jeff"][:favorite_numbers].min

users["Peter"(:favorite_numbers)]
for :favorite_numbers.each |smallest|
  if smallest < smallest
  puts smallest
end

6. How would you return an array of PJ's favorite numbers that are also even?

users["PJ"[:favorite_numbers].each do |even|
if even %2 == 0
puts even
end

OR This one works:
users["PJ"[:favorite_numbers].select{|x| x.even?}


7. How would you return an array of the favorite numbers common to all users?
((users["peter"][:favorite_numbers] & users["PJ"][:favorite_numbers] ETCETERA))


8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

(users["PJ"][:favorite_numbers] | (users["Peter"][:favorite)numbers]) | users["Jeff"] [:favorite_numbers]).sort


9. How would you change Peter's favorite number 12 into the string "12"?
users["Peter"][:favorite_numbers][0] = "12"








