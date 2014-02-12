# #Morning Exercise - Objects in the Mail
require 'pry'
# Create the following objects and make sure that each of them works and interacts with the others as described.

# - MailItem Object
#   - MailItem should have a ship_to_address
#   - MailItem should have a stamp_value
class MailItem
  def initialize(ship_to_address, stamp_value)
    @ship_to_address = ship_to_address
    @stamp_value = stamp_value
  end

end


# - Postcard object
#   - Postcard should inherit MailItem
#   - Postcard should have a message
#   - Postcard should have a method to return its message
class Postcard <MailItem
  def initialize(ship_to_address, stamp_value, message)
    super(ship_to_address, stamp_value) #super calls parent initialize
    @message = message
  end

  def message
    @message
  end
end

# - Package object
#   - Pacakge should inherit MailItem
#   - Package should have a `content` array
#   - Package should have an `is_fragile` boolean
#   - Package should have an `is_broken` boolean
#   - Package should have a method `shake`
#     - If the Package `is_fragile` and is shaken... `is_broken` should be set to `true`
#   - Package should have an `is_broken?` method that returns whether it is broken or not
class Package <MailItem
  def initialize(ship_to_address, stamp_value, content, is_fragile)
    super(ship_to_address, stamp_value) #super calls parent initialize
    @content = content
    @broken = false
    @fragle = is_fragile
  end

  def shake
    if @fragile == true
      @broken = true
    end
  end

def is_broken?
  @broken
end


# - Mailbox Object
#   - Mailbox should have an array of MailItem objects
#   - Mailbox should have an accept_mail method
#     - accept_mail should take a `postcard` or `package`
#     - accept_mail should place that mail in the Mailbox's array of MailItem objects
#   - Mailbox should have an open_mail method that removes and returns the first item in its array of MailItem objects
#   - Mailbox should have a to_s method that includes the number of postcards and packages in the mailbox
#     - Example: `The mailbox has 16 postcards and 3 packages`
class Mailbox <MailItem
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
    postcards = @mail_items.count {|item| item.class == Poscard}
    packages = @mail_items.count - postcards
    "The mailbox has #{postcards} postcards and #{packages} packages."
  end
end