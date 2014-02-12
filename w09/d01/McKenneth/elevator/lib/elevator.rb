class Elevator
  
  def initialize
    @floors = [1,2,3,4,5,6,7,8,9,10]
    @direction = "up"
    @current_floor = @floors[0]
  end

  def floors
    @floors
  end

  def direction
    @direction
  end

  def current_floor(floor)
    @current_floor = @floors[floor-1]
  end

  def call(which_way)

    if which_way == "up" && @current_floor < @floors.last
      @direction = which_way
    elsif which_way == "down" && @current_floor > @floors.first
      @direction = which_way
    elsif @current_floor == @floors.last
      @direction = "down"
    elsif @current_floor == @floors.first
      @direction = "up"
    end
  end

  def call_floor(floor)
    if @floors.include?(floor)
      if @direction == "down" && floor < @current_floor
        @current_floor = floor
        return true
      elsif @direction == "up" && floor > @current_floor
        @current_floor = floor
        return true
      elsif @direction == "down" && floor > @current_floor
        @current_floor = @current_floor
        return false
      end
    else
      false
    end 
  end

end