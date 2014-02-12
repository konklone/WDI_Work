class MailItem

  def initialize(ship_to_address, stamp_value)
    @ship_to_address = ship_to_address
    @stamp_value = stamp_value
  end

  def ship_to_address
    @ship_to_address
  end

  def stamp_value
    @stamp_value
  end
end

class Postcard < MailItem

  def initialize(address, stamp, message)
    super(address, stamp)
    @message = message
  end

  def message
    @message
  end
end

class Package < MailItem

  def initialize(address, stamp, content, is_fragile)
    super(address, stamp)
    @content = []
    @is_fragile = is_fragile
    @is_broken = false
  end

  def content
    @content
  end

  def is_fragile?
    @is_fragile
  end

  def shake
    if is_fragile? == true
      @is_broken = true
    end
  end

  def is_broken?
   @is_broken
  end
end

class Mailbox

  def initialize
    @mail_items_array = []
  end

  def postcards
    @postcards
  end

  def packages
    @packages
  end

  def mail_items_array
    @mail_items_array
  end

  def accept_mail(mail_item)
    mail_items_array << mail_item
  end

  def open_mail
    mail_items_array.slice!(0)   
  end

  def to_s
    num_postcards = @mail_items_array.count {|item| item.class == Postcard}
    num_packages = @mail_items_array.count {|item| item.class == Package}
    puts "The mailbox has #{num_postcards} postcards and #{num_packages} packages."
  end
end
