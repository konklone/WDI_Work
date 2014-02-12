

1. "It's true!"
2. "it's false"
3. "it's false"
4. nil
5. nil
6. "it's true!"
7. nil	

----

1. users["Jeff"][:github]
2. users["PJ"][:favorite_numbers] << 7
3. users["nichol"] = {:github => nicholalexander, :favorite_numbers => [0,1,-1]}
4. users["Peter"][:favorite_numbers]
5. users["Jeff"][:favorite_numbers].min
6. users["PJ"][:favorite_numbers].find_all { |i| i % 2 == 0 }
7. users["PJ"][:favorite_numbers] & users["Nichol"][:favorite_numbers]
7. users.each do |k,v|
	newarray += v[:favorite_numbers]
   end
9. users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s


