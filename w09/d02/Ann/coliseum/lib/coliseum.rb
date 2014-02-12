class Coliseum
  attr_accessor :gladiators

  def initialize(name)
    @name = name 
    @gladiators = []
  end

  def name 
    @name 
  end 

  def add_gladiator(name,weapon)
    if @gladiators.length < 20
      @gladiators.push({name: name,weapon: weapon})
    else
      "Too many gladiators!"
    end
  end
end
