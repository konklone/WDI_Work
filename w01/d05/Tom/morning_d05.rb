a = ["Peter", "PJ", "Jeff"]

puts a[0]
a << "Tom"
a.delete_at(1)

puts a


h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# accessing values from a hash
puts h[1]
puts h[:two]
puts h["two"]

# The following all add key vales to a hash
puts h[5] = "Five"
h.merge!(3 => "Three")
h.merge!(:four => 4)

# The below deletes the 1 => "One" key value pair from hash h
h.delete(1)

puts h




