require 'pry'

class MailItem
  def initialize(address,stamp_val)
    @address = address
    @stamp_val = stamp_val
  end
end
  
end

class PostCard < MailItem
  def initialize(message,stamp_val,address)
    @message = message
    super (address,stamp_val)
    @address = address
    @stamp_val = stamp_val
  end

  def message
    @message
  end
end

class Package < MailItem
  def initialize(address,stamp_val,fragile,content)
    super (address,stamp_val)
    @fragile = fragile
    @content = content
    @is_broken = false
  end
  
  def shake
    if @fragile == true
      @is_broken = true
    end
  end
  
  def is_broken?
    if @is_broken == true 
      "Your Package is Broken"
    end
  end
end

class Mailbox
  def initialize
    @mail_items = []
  end

  def accept_mail(mail_item)
    @mail_items << mail_item
  end
  
  def open_mail
    @mail_items.shift
  end

  def to_s
    num_postcards = @mail_items.count {|item| item.class == PostCards}
    "The Mailbox has #{num_postcards} PostCards and #{@mail_items.count - num_postcards}Packages!"
  end

end