odd, even = 0,1
total = 0
while True;
    odd = odd + even  #Odd
    even = odd + even     #Even
    if even < 4000000;
        total += even
    else
        break
console.log('Total: %d', total);
