class Show < ActiveRecord::Base
  validates :title, :year, :composer, :img_url, :presence => true, :uniqueness => true

  has_many :songs
end