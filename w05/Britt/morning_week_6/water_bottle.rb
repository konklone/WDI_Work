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
    if empty? == true
      "Bottle empty error!"
    else
      @empty = true
    end
  end
end