class MailItem 
  
  def initialize(address, stamp)
    @ship_to_address = address
    @stamp_value = stamp
  end
  #in pry you can then do MailItem.new("10 east 34st")
end

class Postcard < MailItem
  def initialize(address, stamp, message)
    super(address, stamp)#super will call it parents (the MailItem) initialize methods
    @message = message
  end

  def message
    @message
  end
end 

class Package < MailItem
  def initialize(address, stamp, content, is_fragile)
    @content = content
    super(address, stamp)
    @is_fragile = is_fragile
    @is_broken = false
  end

  def shake
    if @is_fragile == true
       @is_broken = true
    end #in pry you ca do pkg.inspect
    def is_broken?
      if @is_broken == true
        "Your package is broken..."
      end
    end
    # if content == is_fragile && is_shaken
    #   is_broken == true
    # else is_broken == false
    # end
  end
end

class Mailbox 

  def initialize
    @mail_items =[]
  end

  def accept_mail(mailitem)
    @mail_items << mailitem
  end

  def open_mail
    @mail_items.shift #slice!return the array atthe index you giveit and take it out.
  # also slice!(0)will do exactly the same thing.
  end
# we can go thru the array and see which ones were poster or package.
# method for this is .count 
  def to_s
    num_postcards = @mail_items.count { |items| item.class == Postcard }
    "The mailbox has #{num_postcards} postcards and #{@mail_items - num_postcards}"
  end
end
# try in pry
# pc = Postcard.new("addy", "35", "Hi")
# mb= Mailbox.new()
# mb.accept_mail(pc)







