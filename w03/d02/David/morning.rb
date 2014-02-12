require 'pry'

class MailItem

  def initialize(address, stamp)
    @ship_to_address = address
    @stamp_value = stamp
  end

end

class Postcard < MailItem

  def initialize(address, stamp, message)
    super(address,stamp)
    @message = message 
  end

  def message
    @message
  end

end

class Package < MailItem

  def initialize(address, stamp, content, is_fragile)
    super(address,stamp)
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
      "The Package is Broken"
    end
  end

end

class Mailbox

  def initialize
    @mailitem_obj = []
  end

  def accept_mail(mail_item)
    @mailitem_obj << mail_item
  end

  def open_mail
    @mailitem_obj.shift
  end

  def to_s
    num_postcards = @mailitem_obj.count { |item| item.class == Postcard }
    binding.pry
    "The mailbox contains #{num_postcards} postcards and #{@mailitem_obj.count - num_postcards} packages"
  end

end


pc = Postcard.new("houston", 35, "first postcard")
pc2 = Postcard.new("houston", 35, "second postcard")
pc3 = Postcard.new("houston", 35, "third postcard")

mailbox = Mailbox.new
mb = mailbox.accept_mail(pc)
mb = mailbox.accept_mail(pc2)
mb = mailbox.accept_mail(pc3)

puts mailbox.to_s


