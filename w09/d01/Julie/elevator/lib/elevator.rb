class Elevator
  def initialize
    @floors = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @direction = "up"
    @floor = @floors[0]
    @called_floors = []
  end

  def floors
    @floors
  end

  def called_floors
    @called_floors
  end

  def direction
    @direction
  end

  def floor
    @floor 
  end

  def call_floor(floor)
    if ((direction == "up") && (floor > @floor))
      @called_floors.push(floor)
    end
    if ((direction == "down") && (floor < @floor))
      @called_floors.push(floor)
    end
  end


  def trip(calls)
    if @direction == "up"
      calls.sort

        calls.each do |call|
          puts "stopped at floor #{call}"
          @floor = @floors[@floors.index(call)]
        end
        
      end
    end

    if @direction == "down"
     calls.sort { |a, b| b <=> a }

      calls.each do |call|
          puts "stopped at floor #{call}"
          @floor = @floors[@floors.index(call)]
      end

   end
  end
  # def trip(start_floor, end_floor)
  #   @floor = @floors[@floors.index(end_floor)]
  # end

  # def take_trip(start_floor, end_floor)

  #   if start_floor == 1
  #     @direction = "up"
  #     trip(start_floor, end_floor)

  #   elsif start_floor == 10
  #     @direction = "down"
  #     trip(start_floor, end_floor)

  #    else
  #     trip(start_floor, end_floor)
  #   end

  # end
elevator = Elevator.new

elevator.call_floor(2)
elevator.call_floor(4)

elevator.trip(elevator.called_floors)