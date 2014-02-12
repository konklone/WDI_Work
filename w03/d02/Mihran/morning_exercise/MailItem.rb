class MailItem
  def initialize (address, stamp)
    @ship_to_address = address
    @stamp_value = stamp
  end

  def ship_to_address
    @ship_to_address
  end

  def stamp_value
    @stamp_value
  end  
end

class Postcard < MailItem
  def initialize (address, stamp ,message)
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
    @content = content
    @is_fragile = is_fragile
    @is_broken = false
  end

  def shake
    if @is_fragile == true
      @is_broken = true
    end
  end

  def is_broken?
    if @is_broken == true
      "Your package is broken"
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
    @mail_items.shift
  end

  def to_s
    num_postcards = @mail_items.count{|item| item.class == Posctcard}
    "The mailbox has #{num_postcards} poscards and #{@mail_items -num_postcards} packages."
  end

end

pc2 = Postcard.new()


