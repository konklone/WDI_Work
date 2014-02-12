class Tribute < Citizen
  validates :game_id, presence: true
  validates :rating, inclusion: 1..10, allow_nil: true

  belongs_to :game
  belongs_to :escort, :foreign_key => :district_id, :primary_key => :foreign_key
  has_and_belongs_to_many :sponsors, :join_table => "sponsors_tributes"
  has_and_belongs_to_many :rounds, :join_table => "rounds_tributes"

  # allows us to 'compare' one tribute with another
  # ie. who wins in a fight? katniss > cato
  # http://www.ruby-doc.org/core-2.0.0/Comparable.html
  include Comparable

  def <=>(other)
    comparator = [
      rating <=> other.rating,
      sponsors.count <=> other.sponsors.count,
      district.number <=> other.district.number,
      gender == other.gender ? 0 : (gender == "f" ? 1 : -1)
    ].find(&:nonzero?)

    comparator || [-1, 1].sample
  end

  def ==(other)
    self.eql?(other)
  end

  def dead?
    !alive?
  end

  def die!
    update(alive: false)
  end
end