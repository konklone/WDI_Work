###A
puts "Exercise A"
a = ["Peter", "PJ", "Jeff"]
puts a[0]
a.push "David"
print a
a.delete("PJ")
### This will return PJ and if we set the statement = to a variable we could have stored Pj
print a


  #B
  puts "Exercise B"
  h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
  puts h[1]
  puts h.key(2)
  puts h[:two]
  puts h["two"]
  h[3] = "three"
  print h
  h[:four] = 4
  print h
  h.delete(1)
  print h

  
