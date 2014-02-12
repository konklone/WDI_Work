class Cell

  def initialize
    @life_state = true
    @neighbors = 0 
  end

  def life_state
    @life_state
  end

  def alive
    @life_state = true
  end

  def die 
    @life_state = false 
  end

  def neighbors(number)
    @neighbors = number
  end

  def find_neighbors
    self.resurrect
    (@neighbors < 2 || @neighbors > 3) ? self.die : self.alive
    
  end 

  def resurrect
    (@neighbors == 3 && self.life_state == false) ? self.alive : self.die 
  end 
end