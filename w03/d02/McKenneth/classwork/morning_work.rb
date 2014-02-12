class MailItem

  def initialize(address, stamp)
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
  def initialize(address, stamp, stuff)
    super(address, stamp)
    @stuff = stuff
    @contents = []
    @is_fragile = true
    @is_broken = false
    content
  end
  def content
    @contents << @stuff
  end
  def inside
    @contents.each{|inside| puts "This package has #{inside} inside of it"}
  end
    
  def shake
      if @is_fragile
        @is_broken = true
      else
        @is_broken = false
      end
  end
  def broken
    if @is_broken
      puts "This package is shattered to a billion pieces"
    else
      puts "All is well my friend, all is well. Package == SAFE"
    end
  end
end

class Mailbox
    def initialize
      @mailbox = []
    end

    def accept_mail(something)
      @mailbox << something
    end
    def open_mail
      mail = @mailbox.shift
    end
    def to_s
        @postcard = 0
        @package = 0
      @mailbox.each do |mail|
        if mail.class == Postcard
          @postcard += 1
        else
          @package += 1
        end
      end
      puts "This mailbox has #{@postcard} postcards and #{@package} packages."
    end
end


mailbox = Mailbox.new
drugs = Package.new("home", "35 cents", "Molly")
to_mom = Postcard.new("Scarsdale", "40 cents", "HELLO MAMA")
to_dad = Postcard.new("Newburgh", "50 cents", "Hello Pops")
mailbox.accept_mail(drugs)
mailbox.accept_mail(to_mom)
mailbox.accept_mail(to_dad)
mailbox.to_s
# mailbox.open_mail
# drugs.shake
drugs.broken
drugs.inside
mailbox.to_s
puts to_mom.message
