
class MailItem 

  def initialize (ship_to_address, stamp_value)
      @ship_to_address = ship_to_address
      @stamp_value = stamp_value
  end
end 


class Postcard < MailItem

  def initialize (ship_to_address, stamp_value, message)
      super(ship_to_address, stamp_value)
      @message = message
  end

    def return_message
      @message
    end

end

class Package < MailItem

  def initialize (ship_to_address, stamp_value, is_fragile)
      super(ship_to_address, stamp_value)
      @content = content
      @is_fragile = is_fragile
      @is_broken = false
  end

  def shake
   if @is_fragile == true
    @is_broken = true
    end 
  end

  def is_broken
    if @is_broken == true
      "Your package is broken."
  end
end

class Mailbox
  def initialize
    @mailitem_array = []
  end

  def accept_mail(mailitem)
    @mailItem_array << mailitem
  end

  def open_mail
    @mailitem_array.shift
  end

  def to_s
    "The mailbox has #{@mailitem_array.length}."
    num_postcards = @mailitem_array.count { |item| item.class == Postcard}
    "The mailbox has #{num_postcards} postcards and #{@mailitem_array.count - num_postcards} packages."
  end

end

# pkg = package.new("address", 32., ["vase"], true)
# .inspect will show all the instance variables:
# pkg.inspect





