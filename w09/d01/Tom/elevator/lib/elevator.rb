class Elevator
  def initialize
    @stops = [{:one => true}, {:two => false}, {:three => false}, {:four => false}, {:five => false}, {:six => false}, {:seven => false}, {:eight => false}, {:nine => false}, {:ten => false}]
    @at = 1
  end

  def stops
    @stops
  end

  def check_floor
    i = 0
    until stops[i].value? true do
      @at = i + 1
      i += 1
    end
    @at
  end

  def up(floor)
    if floor >= @at
      false
    else
      true
    end
  end

  def down
    true
  end

end