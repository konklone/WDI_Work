class Elevator

  def initialize
    @floor = 0 
    @status = 0 #-1 is down, 0 is stopped, 1 is up
    @queue = []
  end

  def floor
    @floor
  end

  def status
    @status
  end

  def queue
    @queue
  end

  def makeInternalCall(callfloor)
    if callfloor != @floor 
      @queue << callfloor
    end
    
  end

  def move(callfloor)

    if callfloor > floor
      @status = 1
    elsif callfloor < floor
      @status = -1
    end

    @floor = callfloor

  end


end
