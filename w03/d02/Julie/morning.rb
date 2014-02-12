# MailItem Object
#   - MailItem should have a ship_to_address
#   - MailItem should have a stamp_value

class MailItem
  # attr_accessor :ship_to_address :stamp_value
  def initialize(address, stamp)
    @ship_to_address = address
    @stamp_value = stamp
  end
end

# - Postcard object
#   - Postcard should inherit MailItem
#   - Postcard should have a message
#   - Postcard should have a method to return its message

class Postcard < MailItem
  attr_accessor :message
  def initialize(address, stamp, message)
      super(address, stamp)
      @message = message
  end 

  def message
    @message
  end
end

# Package object
#   - Pacakge should inherit MailItem
#   - Package should have a `content` array
#   - Package should have an `is_fragile` boolean
#   - Package should have an `is_broken` boolean
#   - Package should have a method `shake`
#     - If the Package `is_fragile` and is shaken... `is_broken` should be set to `true`
#   - Package should have an `is_broken?` method that returns whether it is broken or not

class Package < MailItem


  def initialize(address, stamp, fragile, content)
    super(address, stamp)
    @is_fragile = fragile
    @is_broken = false
    @content = content
 end

  def shake
    if @is_fragile == true
     @is_broken = true
  end

  def is_broken?
    if @is_broken == true
    puts "Sorry it's broken"
  end

end

# - Mailbox Object
#   - Mailbox should have an array of MailItem objects
#   - Mailbox should have an accept_mail method
#     - accept_mail should take a `postcard` or `package`
#     - accept_mail should place that mail in the Mailbox's array of MailItem objects
#   - Mailbox should have an open_mail method that removes and returns the first item in its array of MailItem objects
#   - Mailbox should have a to_s method that includes the number of postcards and packages in the mailbox
#     - Example: `The mailbox has 16 postcards and 3 packages`
class Mailbox
  def initialize
    @mail_items = []
  end

  def accept_mail(mailitem)
    @mail_items << mailitem
  end

  def open_mail
    @mail_items.shift
 end

 def to_s
  @num_packages = @mail_items.count { |item| item.class == Package}
  @num_postcards = @mail_items.count { |item| item.class == Postcard}

  puts "The mailbox has #{@num_postcards} postcards and #{@num_packages} packages"
 end

end

pc = Postcard.new("1122 Rainbow Rd",".44","It'sa me")
pc1 = Postcard.new("1122 Rainbow Rd",".44","Hi")
pc2 = Postcard.new("1122 Rainbow Rd",".44","6th place again")


mb = Mailbox.new
mb.accept_mail(pc)
mb.accept_mail(pc1)
mb.accept_mail(pc2)

mb.to_s



