class Building

  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apts

  def initialize(address, style, has_doorman, is_walkup, num_floors, apts = {})
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apts = apts
  end

  def list_apartments
    puts " "
    @apts.keys.each { |apt| puts apt}
  end

  def to_s
    puts " "
    puts "address : #{@address}"
    puts "style : #{@style}"
    puts "does it have a doorman? : #{@has_doorman}"
    puts "is it a walkup? : #{@is_walkup}"
    puts "floors : #{@num_floors}"
    puts " "
  end

end
