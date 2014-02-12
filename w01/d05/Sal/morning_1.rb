a = ["Peter", "PJ", "Jeff"]

a[0]
a.push("Sal") #OR a << "Sal"
a.delete("PJ")

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

h[1]
h[:two]
h["two"]
h[3] = "Three"
h[:four] = 4
h.delete(1)