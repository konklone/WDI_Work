class MailItem
  def initialize (address, stamp)
  @ship_to_address = address
  @stamp_value = stamp 
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
  @content = content
  @is_fragile = fragile
  @is_broken = false
end
  def shake
  if @is_fragile == true #conditional statement
    @is_broken = true 
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
  # @mail_items.slice!(0) #returns then deletes the element at index()
  @mail_items.shift 
  end  
  def to_s
    num_postcards = @mail_items.count {|item| item.class == Postcard}
    "The mailbox has #{num_postcards} postcards and #{@mail_items.count
    - num_postcards} packages."
  end
end


pc = Postcard.new("addy", 35, "Hi")
pc2 = Postcard.new("addy2", 35, "Hi")
pc3 = Postcard.new ("addy3", 35, "Hi")

