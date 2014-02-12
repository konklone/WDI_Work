class WaterBottle
  def initialize
    @empty = true
  end

  def empty?
    @empty
  end

  def drink
    if @empty == true
      raise "This bottle is empty!" if empty?
    else 
      @empty = true
      :water
    end
  end

  def fill
    @empty = false
  end
end