class AppointmentMaker
  def initialize(room)
    @room = room
  end

  attr_reader :room

  def make(appointment, account)
    if room.available?(appointment) && account.debit(appointment.cost)
      appointment.save
    end
  end
end

