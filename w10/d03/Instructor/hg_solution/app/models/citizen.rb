class Citizen < ActiveRecord::Base
  validates :name, :birth_year, :district_id, :gender, presence: true
  validates :gender, inclusion: ["m", "f"]

  belongs_to :district

  def self.random
    order("random()")
  end

  def self.male
    where(gender: "m")
  end

  def self.female
    where(gender: "f")
  end

  def self.teen
    where(birth_year: 18.years.ago.year..12.years.ago.year)
  end
end
