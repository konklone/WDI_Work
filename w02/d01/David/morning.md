#Morning Exercise

###More fun with Arrays & Hashes

**Given the following data structure:**

`is = {true => "It's true!", false => "It's false"}`

1. What is the return value of is[2 + 2 == 4]?
2. What is the return value of is["Peter" == "Jeff"]?
3. What is the return value of is[9 > 10]?
4. What is the return value of is[0]?
5. What is the return value of is["PJ"]?
6. What is the return value of is[false||true]?
6. What is the return value of is[false||"Jeff"]?

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
2. How would you add the number 7 to PJ's favorite numbers?
3. How would you add yourself to the users hash?
4. How would you return the array of Peter's favorite numbers?
5. How would you return the smallest of Jeff's favorite numbers?
6. How would you return an array of PJ's favorite numbers that are also even?
7. How would you return an array of the favorite numbers common to all users?
8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
9. How would you change Peter's favorite number 12 into the string "12"?