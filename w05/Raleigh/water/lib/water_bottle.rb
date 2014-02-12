class WaterBottle

   def empty?
      @bottle = true
   end

   def fill
      @bottle = false
   end

   # def full?
   #    if @bottle = true
   #       false
   #    else
   #       true
   #    end
   # end

   def drink
      if @bottle == true
         raise "This bottle is empty!"
      else
         :water
         @bottle = true
      end
   end


end