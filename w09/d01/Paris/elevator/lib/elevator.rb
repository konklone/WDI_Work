class Elevator
  def initialize
    @floors = [1,2,3,4,5,6,7,8,9,10]
    @move = false
  end

  def move(start, finish)
    @chosen_floors = [start, finish]
    if @chosen_floors[0] < @chosen_floors[1]
      @up = true
    elsif @chosen_floors[0] > @chosen_floors[1]
      @down = true
    else
      @move
    end
  end

  def up
    @up
  end

  def down
    @down
  end

  def current_floor
    @current_floor
  end

  def go_up_to(floor)
    if @up = true
      @current_floor = floor
  end

end