class WaterBottle
  def initialize
    @empty = true
  end

  def empty?
    @empty
  end

  def drink
    raise "This bottle is empty!"
    :water
  end

  def fill
    @empty = false
  end

end