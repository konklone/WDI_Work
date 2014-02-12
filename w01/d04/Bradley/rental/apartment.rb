class Apartment

  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters, :apt_name, :renters

  def initialize(price, is_occupied = 'no', sqft, num_beds, num_baths)
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
    @is_occupied = is_occupied
  end

  def to_s
    puts " "
    puts "price : #{@price}"
    puts "sqft : #{@sqft}"
    puts "number of beds : #{@num_beds}"
    puts "number of baths : #{@num_baths}"
    puts "renters : #{@renters.join(' | ')}"
    puts "occupied? : #{@is_occupied}"
    puts " "
  end

  def list_renters
    @renters.each { |renter| puts renter }
  end


end