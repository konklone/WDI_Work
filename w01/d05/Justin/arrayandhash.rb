###Array and Hash access

#**A. Given the following data structure:**

#`a = ["Peter", "PJ", "Jeff"]`

#1. How would you return the string "Peter"?
#2. How would you add your name to the array?
#3. How would you remove "PJ" from the array

#**B. Given the following data structure:**

#`h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}`

#1. How would you return the string "One"?
#2. How would you return the string "Two"?
#3. How would you return the number 2?
#4. How would you add {3 => "Three"} to the hash?
#5. How would you add {:four => 4} to the hash?
#6. How would you remove {1 => "One"} from the hash?



#**A
a = ["Peter", "PJ", "Jeff"]

#1. How would you return the string "Peter"?
a[0]

#2. How would you add your name to the array?
a.push("Justin")

#3. How would you remove "PJ" from the array
a.slice(1)



#**B
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

#2. How would you return the string "Two"?
h[:two]

#3. How would you return the number 2?
h["two"]

#4. How would you add {3 => "Three"} to the hash?
h[3] = "Three"

#5. How would you add {:four => 4} to the hash?
h[:four] = 4

#6. How would you remove {1 => "One"} from the hash?
h.delete(1)