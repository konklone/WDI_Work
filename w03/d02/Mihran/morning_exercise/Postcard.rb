class Postcard < MailItem

  def initialize (ship_to_address, stamp_value,message)
    @message = message
  end

  def message
    @message
  end


end

