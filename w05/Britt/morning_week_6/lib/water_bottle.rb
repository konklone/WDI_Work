class WaterBottle
  def initialize
    @empty = true
    @full = false
  end

  def empty?
    @empty
  end

  def full?
    @full
  end

  def fill
    @full = true
    @empty = false
  end

  def drink
    raise "This bottle is empty!" if empty?
    @empty = true
    @full = false
    :water
  end
end