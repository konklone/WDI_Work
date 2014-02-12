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

  def call
    if up is true then new current floor is floor_thats_called
  end

end

class Floor < Elevator
end

class Dispatcher < Elevator
end