class Chef < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true 
  has_and_belongs_to_many :rounds 
  belongs_to :episode 
end 