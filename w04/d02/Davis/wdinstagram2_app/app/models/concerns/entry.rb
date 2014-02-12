class Entry < ActiveRecord::Base
	validates :name, :photo_url, presence: true

	# more recent than 10/1/2010
	validate :not_recent

	def not_recent
		# if date is earlier than 2010/10/01
		if self.date_taken.to_i < 20101001
			error.add(:date_taken, "This photo should be more recent than 2010/10/01")
		end
	end	
end