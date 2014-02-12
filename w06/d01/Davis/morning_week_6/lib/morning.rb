class WaterBottle
  attr_accessor :empty

  def initialize(empty = true)
    @empty = empty
  end

  def drink
    # raise error
    raise empty ? "This bottle is empty!" : "MMMM, nice water"
  end

  def fill
    self.empty = empty ? false : true
  end

  def full?
    empty
  end
end
