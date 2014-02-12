#.inspect -> can look at contents of object 
class MailItem 
  def initialize(address, stamp) 
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
  def initialize(address, stamp, message)
    super (address,stamp) 
    @message = message 
  end 

  def message 
    @message 
  end 
end 

class Package < MailItem 
  def initialize(address, stamp, content, is_fragile)
    super (address, stamp)
    @content = []
    @is_fragile = is_fragile
    @is_broken = false  
  end 

  def shake 
    if is_fragile == true 
      @is_broken = true 
      end 
  end 

    def is_broken? 
      if @is_broken == true 
        "Your package is broken :("
      end 
  end 

  class Mailbox 
      def initialize 
        @mail_items = []
      end 

      def accept_mail(mailitem)
        @mail_items <<mailitem 
      end 

      def open_mail
        @mail_items.slice!(0)
      end 

      def to_s 
        num_postcards = @mail_items.count{|item| item.class == Postcard}
        "The mailbox has #{num_postcards} postcards and #{@mail_items - num_postcards} packages."
      end 
    end 

    #slice WITH ! returns number from array value given and then takes number out of array
    #slice WITHOUT ! returns number from array value given and keeps number in array 
    #use the COUNT method 


pc2 = Postcard.new (902, 35, "Hello there!")




