class Note < ActiveRecord::Base
  validates :date, :text, presence: true
  belongs_to :costume
end