class Note < ActiveRecord::Base
  validates :text, :date, presence: true

  belongs_to :costume
end