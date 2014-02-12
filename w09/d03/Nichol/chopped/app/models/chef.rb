class Chef < ActiveRecord::Base
  belongs_to :episode

  validates :name, presence: true
end
