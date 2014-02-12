
def threemult
  multiple_array = []
  i = 0 
    while i < 1000 
      if i % 3 == 0 || i % 5 == 0 
        multiple_array << i  
      end 
      i +=1
    end 
    multiple_array.inject(:+)
end 

#javascript! 
var array = []

for (var counter = 0, counter < 1000; counter++); 
  if (counter % 5 == 0) || (counter % 3 == 0)
    array.push(counter); 

