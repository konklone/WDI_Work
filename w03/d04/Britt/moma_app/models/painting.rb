class Painting < ActiveRecord::Base
  belongs_to :artist

  validates :title, :year, :image_url, presence: true
end