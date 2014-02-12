users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75],
      },
      "PJ" => {
        :github => "h4w5",
        :favorite_numbers => [8, 12, 24],
      },
      "Jeff" => {
        :github => "jkonowitch",
        :favorite_numbers => [12, 14, 85],
      },
    }

    nums = [1,2,3]
    new_array = []

    nums.each do |num|
      new_array.push(num + 2)
    end

    puts new_array

    or we can use map for it much easier!
    
    nums = [1,2,3]

    incremented_by_two = nums.map do |num|
      num + 2
    end
    it will return a NEW array called incremented_by_two 
    nums still = [1,2,3]

    sum - 0; ums.each do |num|
      sum+= num
    end
    =>6
    adds them all.

nums.reduce do |sum, nxt|
  sum + nxt
end
this takes the first 2 numbers in the array (1,2 which = 3)then
3+3 = 6 so it would return
=>6
























