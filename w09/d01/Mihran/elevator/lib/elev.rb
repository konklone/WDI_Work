class Elevator

  def initialize(starting_floor, starting_direction)
    @floors = [1,2,3,4,5,6,7,8,9,10]
    @called_floors = []
    @current_floor = starting_floor
    @direction = starting_direction
  end

  def floors
    @floors
  end

  def called_floors
    @called_floors
  end

  def call_floor(floor)
    if ((direction == "up") && (floor > current_floor))
      @called_floors.push(floor)
    end
    if ((direction == "down") && (floor < current_floor))
      @called_floors.push(floor)
    end
  end

  def current_floor
    @current_floor 
  end

  def direction
    @direction
  end

  def change_direction
    if @direction = "up"
      @direction = "down"
    else
      @direction = "up"
    end
  end

  def update_floor(floor)
    @current_floor = floor
    if floor == 10
      @direction = "down"
    end
    if floor == 1
      @direction = "up"
    end
  end


end