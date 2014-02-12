class MailItem
   def initialize(address, stamp)
      @ship_to_address = address
      @stamp_value = stamp
   end
end


class Postcard < MailItem
   def initialize(address, stamp, message)
      super(address,stamp) #super calls the above intialized method
      @message = message
   end
   
   def message
      @message
   end
end


class Package < MailItem
   def initialize(address,stamp, content, is_fragile)
      super(address,stamp) 
      @content = content
      @is_fragile = is_fragile
      @is_broken = false
   end

   # def fragile(fragile)
   #    if fragile == "yes"
   #       @is_fragile = true
   #    else
   #       @is_fragile = false
   #    end
   # end

   def shake
      if @is_fragile == true
         @is_broken = true
      else
         @is_broken = false
      end
   end

   def is_broken?
      if @is_broken == true
         "Your package is broken."
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
      num_postcards = @mail_items.count {|item| item.class == Postcard}
      "The mailbox has #{num_postcards} postcards and #{@mail_items.count - num_postcards} packages."
   end
end

### Definitions End, Program Begins ###

pc = Postcard.new("Rachel", 42, "Ciao de Venezia")
pc2 = Postcard.new("Bobby",35, "Buon Giorno!")
pc3 = Postcard.new("Jack", 46, "Arrivederci!")

mb = Mailbox.new()
mb.accept_mail(pc)
mb.accept_mail(pc2)
mb.accept_mail(pc3)

pus mb.to_s