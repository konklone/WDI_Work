class Bottle

  def initialize
    @empty = true
  end

  def empty?
    # if @fill
    #   @empty = false
    # else
    #   @empty = true
    # end
    @empty
  end

   def drink
    #   if @empty
    #     "You have to fill it up"
    #   else
    #     "drink away"
    #   end
    raise "This bottle is empty" if empty?
    @empty = true
    :water
   end

   def fill
    @empty = false
   end

end