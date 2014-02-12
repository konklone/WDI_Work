`a = ["Peter", "PJ", "Jeff"]`

# 1. How would you return the string "Peter"?
# 2. How would you add your name to the array?
# 3. How would you remove "PJ" from the array

a[0]
a.push("paris")
a.delete("PJ") #here, if you want to do something with the item you delete, then have to save it in a new variable, i.e. 
## person_deleted = a.delete("PJ") then call on person_deleted and you'll see all the ones that were deleted.

`h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}`

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
# to delete a pair, just need to give it a key.
  # to return a key in a hash use: h.key("Two")

#when you've deleteed something but need to hold onto it, set it equal to a new variable. 

#   ### Wizard
# - Create a file called wizard.rb
# - In it define a wizard class. Here's the spec:
# - A wizard has:
#   - a name
#   - an array of spells (which will be strings)
# - We should be able to read and write for each attribute
# - We should be able to create a new wizard object, and when we create it it should have no spells at first
# - We should be able to convert to wizard object to a string in a way that tells us the name and all the spells they know.

# - After you've defined the class:
# - Create a new wizard named "Harry Potter" and store it in a variable called harry
# - Add "Lumos" to the spells Harry knows
# - Add "Accio" to the spells Harry knows
# - Add "Expecto Patronum" to the spells Harry knows
# - Print harry to the screen to check your to_s method







