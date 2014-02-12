class Artist < ActiveRecord::Base
  has_many :paintings

  validates :name, :nationality, :date_of_birth, presence: true
end