class Elevator
  attr_reader :floors, :direction, :current_floor, :destination

  def initialize
    @floors = 10
    @direction = "down"
    @current_floor = 0
    @destination = @current_floor
  end

  def ascend(floor)
    if floor > 10 || floor < 0
      "This floor does not exist."
    elsif floor == @current_floor
      "You are already on this floor."
    elsif @current_floor < floor 
      @destination = floor
      @current_floor = @destination 
      @direction = "up" 
    else #@current_floor > floor
      "Wrong direction." 
    end
  end

  def descend(floor)
    if floor < 0 || floor > 10
      "This floor does not exist."
    elsif floor == @current_floor
      "You are already on this floor."
    elsif @current_floor > floor
      @destination = floor
      @current_floor = @destination
      @direction = "down"
    else #@current_floor < floor
      "Wrong direction."
    end
  end
end



