class Dependency < ActiveRecord::Base
	validates :name, :deb_type, :is_gem, :presence => true

	belongs_to :students
end