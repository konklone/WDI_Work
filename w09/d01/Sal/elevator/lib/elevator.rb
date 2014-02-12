class Elevator
  def initialize
    @floors = ["Floor 1", "Floor 2", "Floor 3", "Floor 4", "Floor 5", "Floor 6", "Floor 7", "Floor 8", "Floor 9", "Floor 10"]
  end

  def floors 
    @floors
  end

  def going_up?(current, destination)
    if floors.index(current) != 9
     @floors.index(destination) > @floors.index(current)
    end
  end

  def going_down?(current, destination)
    if floors.index(current) != 0
      @floors.index(destination) < @floors.index(current)
    end
  end

end