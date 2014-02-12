require "pry"

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
end


class Package < MailItem
    
     def initialize(address, stamp, fragile)
        super(address, stamp)
        @is_broken = false
        @is_fragile = fragile
    end

    def shake
        if self.is_fragile
            @is_broken = true
            puts "shake it, don't brake it, took your mama nine months to make it"
        else
            puts "like a rock, baby"
        end

        return is_broken
    end

end

class MailBox

    def initialize
        @mail_items = []
    
    end


    def accept_mail(my_mailitem)
        @mail_items << my_mailitem    
    end

    def open_mail(my_mailitem)
        return @my_mailitem.shift
    end

    def to_s
        total_postcards, total_packages = 0, 0

        @items.each do |x|
            if x.class == Postcard
                total_postcards+=1
            elsif x.class = Package
                total_packages+=1
            end
        end

        return "The mailbox has #{total_packages} packages and #{total_postcards} postcards."

    end
end

my_package = Package.new
my_postcard = Postcard.new
my_mailbox = MailBox.new


binding.pry
