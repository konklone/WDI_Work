class Sponsor < Citizen
  validate :lives_in_capitol

  has_and_belongs_to_many :tributes, :join_table => "sponsors_tributes"

  private

  def lives_in_capitol
    unless district.capitol?
      errors.add(:district, "I am an important person! I must live in the capitol!")
    end
  end
end