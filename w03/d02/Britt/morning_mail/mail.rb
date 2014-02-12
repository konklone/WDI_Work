class MailItem
	attr_reader :ship_to_address, :stamp_value

	def initialize(address, stamp_value)
		@ship_to_address = address
		@stamp_value = stamp_value
	end
end

class Postcard < MailItem
	attr_reader :message

	def initialize(address, stamp_value, message)
		super(address, stamp_value)
		@message = message
	end
end

class Package < MailItem
	attr_reader :content, :is_fragile

	def initialize(address, stamp_value, content, is_fragile)
		super(address, stamp_value)
		@content = content # array of contents
		@is_fragile = is_fragile # boolean
		@is_broken = false # boolean, default value false
	end

	def add_content(item)
		@content << item
	end

	def mark_fragile
		@is_fragile = true
	end

	def shake
		if @is_fragile == true
			@is_broken = true
		end
	end

	def is_broken?
		@is_broken
	end
end

class Mailbox
	attr_reader :mailitems
	def initialize(mailitems)
		@mailitems = mailitems # array of MailItem objects
	end

	def accept_mail(item)
		@mail_items << item
	end

	# removes and returns the first item
	# in the mailitems array
	def open_mail
		@mail_items.shift
	end

	def to_s
		num_postcards = @mail_items.count { |item| item.class == Postcard }
		num_packages = @mail_items.count { |item| item.class == Package }
		returns "This mailbox has #{num_postcards} postcards and #{num_packages} packages."
	end
end

