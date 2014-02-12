require 'spec_helper'

describe Room do
  let(:room) { Room.new(name: "West Wing", hourly_rate: 20) }

  it "is invalid without a name" do
    room.name = nil
    expect(room).to have(1).errors_on(:name)
  end

  it "is invalid without an hourly rate" do
    room.hourly_rate = nil
    expect(room).to have(1).errors_on(:hourly_rate)
  end

  describe "#available?" do
    let(:appointment) do
      Appointment.new(user_id: 99, room: room, start: Time.now, finish: 3.hours.from_now)
    end

    before do
      room.save
      appointment.save
    end

    context "overlapping" do
      let(:unschedule_appt) { double("Appointment", start: 1.hour.from_now, finish: 5.hours.from_now) }

      it "is not available" do
        expect(room.available?(unschedule_appt)).to be_false
      end
    end

    context "non-overlapping" do
      let(:unschedule_appt) { double("Appointment", start: 3.hours.from_now, finish: 5.hours.from_now) }

      it "is false" do
        expect(room.available?(unschedule_appt)).to be_true
      end
    end
  end
end
