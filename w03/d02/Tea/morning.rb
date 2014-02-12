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

  def initialize(message)
    @message = message
  end

  def message
    @message
  end
end

class Package < MailItem

  def initialize(content, is_fragile, is_broken)
    @content = []
    @is_fragile = is_fragile
    @is_broken = is_broken
  end

  def content
    @content
  end

  def is_fragile?
    @is_fragile
  end

  def shake
    if is_fragile? == true
      @is_broken == true
    end
  end

    def is_broken?
     @is_broken
    end
end

class Mailbox

  def initialize
    @mail_items_array = []
    @postcards = 0
    @packages = 0
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
    if mail_item.is_a? Postcard
      @postcards += 1
    elsif mail_item.is_a? Package
      @packages += 1
    end
  end

  def open_mail
    if mail_items_array[0].is_a? Postcard
      postcards -= 1
    elsif mail_items_array[0].is_a? Package
      packages -= 1
    end
    mail_items_array.slice!(0)   
  end

  def to_s
    puts "The mailbox has #{postcards} postcards and #{packages} packages."
  end
end
