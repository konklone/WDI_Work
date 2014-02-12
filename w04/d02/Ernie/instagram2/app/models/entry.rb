class Entry < ActiveRecord::Base
    validates :name, :photos, presence: true
end