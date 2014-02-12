#Morning Exercise

###Array and Hash access

# **A. Given the following data structure:**

a = ["Peter", "PJ", "Jeff"]

# 1. How would you return the string "Peter"?
# 2. How would you add your name to the array?
# 3. How would you remove "PJ" from the array


puts a[0]
a.push("Julie")
a.delete("PJ")

# **B. Given the following data structure:**

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string "One"?
# 2. How would you return the string "Two"?
# 3. How would you return the number 2?
# 4. How would you add {3 => "Three"} to the hash?
# 5. How would you add {:four => 4} to the hash?
# 6. How would you remove {1 => "One"} from the hash?

h[1]
h[:two]
h["two"]
h[3] = "Three"
h[:four] = 4
h.delete(1)


