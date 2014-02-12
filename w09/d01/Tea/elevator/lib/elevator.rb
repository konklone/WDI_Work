class Elevator
  def initialize
    @floors = [1,2,3,4,5,6,7,8,9,10]
    @current_floor = 1
  end

  def floors
    @floors
  end

  def current_floor
    @current_floor
  end

  def go_to(direction, floor)
    case direction
    when "up"
      if floor > current_floor
        @current_floor = floor
      end
    when "down"
      if floor < current_floor
        @current_floor = floor
      end
    end
  end
end