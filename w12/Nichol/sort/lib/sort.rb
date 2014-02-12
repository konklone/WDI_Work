require 'pry'

class Array

  def bubble_sort
    return self if self.size <= 1 # an array of size 1 is already sorted
    swapped = true
    while swapped do
      swapped = false
      1.upto(self.size-1) do |i|
        if self[i-1] > self[i]
          self[i-1], self[i] = self[i], self[i-1] #this swaps them
          swapped = true #remember there was a swap
        end
      end    
    end
    self
  end

  def quick_sort
  # wiki psudo code
  # function quicksort(array)
  #    if length(array) ≤ 1
  #        return array  // an array of zero or one elements is already sorted
  #    select and remove a pivot element pivot from 'array'  // see '#Choice of pivot' below
  #    create empty lists less and greater
  #    for each x in array
  #        if x ≤ pivot then append x to less
  #        else append x to greater
  #    return concatenate(quicksort(less), list(pivot), quicksort(greater)) // two recursive calls
  #

    if self.length <= 1
      return self
    else
   
      pivot = self.slice!(0)
      
      less, greater = [], []
      
      self.each do |x|
        x <= pivot ? less.push(x) : greater.push(x)
      end
    
    return less.quick_sort + [pivot] + greater.quick_sort
  
  end
  
  end
end


