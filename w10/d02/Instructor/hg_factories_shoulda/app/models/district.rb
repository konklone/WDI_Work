class District < ActiveRecord::Base
  validates :number, presence: true

  has_many :citizens

  def random_citizen
    citizens.order("random()").first
  end
end
