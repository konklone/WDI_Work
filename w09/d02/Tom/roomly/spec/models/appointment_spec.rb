require 'spec_helper'

# Homework
# 1. Appt can't overlap for the same room
# 2. A user is charged for a room.  Hourly rate of room * number of hours
#  - this will require an extra model/table --> "Account". it should have a balance
#  - A user cannot rent a room without enough money in their balance to pay for it



describe Appointment do
  let(:appointment) do
    Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
  end

  it "is valid if it has all the attributes" do
    expect(appointment).to be_valid
  end

  it "is invalid without a user_id" do
    appointment.user_id = nil
    expect(appointment).to have(1).errors_on(:user_id)
  end

  it "is invalid without a room_id" do
    appointment.room_id = nil
    expect(appointment).to have(1).errors_on(:room_id)
  end

  it "is invalid without a start time" do
    appointment.start = nil
    expect(appointment).to have(1).errors_on(:start)
  end

  it "is invalid without a finish time" do
    appointment.finish = nil
    expect(appointment).to have(1).errors_on(:finish)
  end

  describe "start/finish" do
    context "start before finish" do
      it "is valid" do
        expect(appointment).to have(0).errors_on(:start)
      end
    end

      context "start after finish" do
        it "is not valid" do
          expect(appointment).to have(1).errors_on(:start)
      end
    end
  end

  describe "room availability" do
    it "is empty" do
      expect(appointment).to have(0).errors_on(:room_id)
  end
end

end
