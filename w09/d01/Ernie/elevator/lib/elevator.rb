class Elevator

  attr_accessor :current_floor

  def initialize(num)
    @floors = (1..num).to_a
    @current_floor = 1
    @request_queue = []
    @direction 
  end

  def floors
    @floors
  end

  def request_queue
    @request_queue
  end


#please enter the floor NOT how many floors you want to go up
  def direction
    return @direction = :none if @request_queue[0].nil?
    elevator_direction = @request_queue[0] - @current_floor
    if elevator_direction > 0
      @direction = :up     
    else
      @direction = :down 
    end    
  end

  def ignore_floor
    if @request_queue[0] > @current_floor && direction() == :up
      return true
    elsif @request_queue[0] < @current_floor && direction() == :down
      return true
   else 
    @request_queue.shift
    return false
   end
  end
end

