require 'pry'


# Create the Parent class MailItem using CamelCase
class MailItem
  def initialize (address, stamp)
    @ship_to_address = address
    @stamp_value = stamp
  end
end

# Create the PostCard class and have it inherit from MailItem
class PostCard < MailItem
  # We inherit address and stamp from MailItem, but still need to initialize them in this new class
  def initialize(address, stamp, message)
    # Then call them using super()
    super(address,stamp)
    @message = message
  end

  # Define a messager method and call the instance variable
  def message
    @message
  end
end

# Define the Package class and inherit from MailItem
class Package < MailItem
  def initialize (address, stamp, content, is_fragile)
    super(address, stamp)
    @is_fragile = is_fragile
    # instance variable is_broken initially set to false
    @is_broken = false
    @content = content
  end

  def shake
    if @is_fragile == true
      @is_broken = true
    end
  end

  def is_broken?
    if @is_broken == true
      "Your package is broken :("
    end
  end
end

class Mailbox

  def initialize
    @mail_items = []
  end

  def accept_mail(mailitem)
    @mail_items << mailitem
  end

  def open_mail
    # slice! is a destructive method the (0) will grab the first element of the array and remove it from the original array
    @mail_items.slice!(0) # .shift will also do this it's naturally destructive
  end

  def to_s
    num_postcards = @mail_items.count { |item| item.class == Postcard}
    "The mailbox has #{num_postcards} postcards and #{@mail_items.count - num_postcards} packages"
  end
end


pc = PostCard.new()
pc2 = PostCard.new()
pc3 = PostCard.new()

mb = Mailbox.new()
mb.accept_mail(pc)
mb.accept_mail(pc2)
mb.accept_mail(pc3)

puts mb.to_s

#binding.pry








