require 'pry'
class Arena
  attr_reader :name, :gladiators

  def initialize (name)
    @name = name
    @gladiators = []
  end

  def add_gladiator(name, weapon)
    if @gladiators.count < 20
      new_gladiator = {"name" => name, "weapon" => weapon}
      @gladiators << new_gladiator
    else
      "Too many gladiators in the arena!"
    end
  end

  def find_gladiator(name)
    if @gladiators.include? name
      "#{name} found."
  end

end
