a = ["Peter", "PJ", "Jeff"]

  a[0]

  a << "Marco"

  a.delete("PJ")

###########################

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

  h[1]

  h[:two]

  h["two"]

  h.merge(3 => "Three")

  h.merge(:four => 4)

  h.delete({1 => "One"}) #also h.delete(1) -- no value necessary if you put in key


####################

Jeff = {name: "jeff", location: "GA"}

def say_name(person)
    puts person[:name]

end

say_name(jeff)
  #=> "Jeff"

def go_home(person)
    person[:location] = "home"
end




