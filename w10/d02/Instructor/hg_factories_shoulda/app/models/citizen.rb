class Citizen < ActiveRecord::Base
  validates :birth_year, :gender, :district_id, :name, presence: true

  belongs_to :district
end