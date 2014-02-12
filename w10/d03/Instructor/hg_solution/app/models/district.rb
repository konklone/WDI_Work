class District < ActiveRecord::Base
  validates :number, presence: true

  has_many :citizens

  def capitol?
    number == 0
  end
end
