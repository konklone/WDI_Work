require 'pry'

class MailItem

  def initialize(ship_to_address, stamp_value)
    @ship_to_address = ship_to_address
    @stamp_value = stamp_value
  end

end

class Postcard < MailItem

  def initialize(ship_to_address, stamp_value, message)
    super(ship_to_address, stamp_value)
    @message = message
  end

  def message
    @message
  end

end

class Package < MailItem

  def initialize(ship_to_address, stamp_value, content = [], is_fragile = false)
    super(ship_to_address, stamp_value)
    @content = content
    @is_fragile = is_fragile
    @is_broken = false
  end

  def shake
    if @is_fragile
      @is_broken = true
    end
  end

  def is_broken?
    @is_broken ? true : false
  end

end

class Mailbox

  def initialize
    @mailitems = []
  end

  def accept_mail(item)
    if item.class == Package || item.class == Postcard
      @mailitems << item
    else
      puts "Sorry that doesn't go in your mailbox!"
    end
  end

  def open_mail
    mailitems.shift
  end

  def to_s
    num_packages = @mailitems.count { |item| item.class = Package }
    num_postcards = @postcards.count { |item| item.class = Postcard }
    puts "The mailbox has #{postcards} postcards and #{packages} packages"
  end

end
binding.pry