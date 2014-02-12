require 'spec_helper'

describe Appointment do
  let(:appointment) do
    Appointment.new(user_id: 1, room_id: 1, start: Time.now, finish: 3.hours.from_now)
  end

  it "is valid with a user_id, room_id, start, finish" do
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

  it "is invalid without start" do
    appointment.start = nil
    expect(appointment).to have(1).errors_on(:start)
  end

  it "is invalid without finish" do
    appointment.finish = nil
    expect(appointment).to have(1).errors_on(:finish)
  end

  describe "start/finish" do
    context "start is before finish" do
      it "is valid" do
        expect(appointment).to be_valid
      end
    end

    context "start is after finish" do
      before do
        appointment.start = Date.tomorrow + 1.day
      end

      it "is not valid" do
        expect(appointment).to have(1).errors_on(:start)
      end
    end
  end

  describe "#cost" do
    let(:room) { Room.create(hourly_rate: 20) }

    before do
      appointment.room = room
    end

    it "calculates the cost" do
      expect(appointment.cost).to eq(60)
    end
  end
end
