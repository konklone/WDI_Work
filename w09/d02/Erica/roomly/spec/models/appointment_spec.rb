require 'spec_helper'

describe Appointment do
  let(:appointment) do
    Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
  end

  it "is valid if it haz all the attributes" do
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

    context "the start time is after the finish time" do
      it "is not valid when start happens after finish" do
        appointment.start = 5.hours.from_now
        appointment.finish = 3.hours.from_now
        expect(appointment).to have(1).errors_on(:start)
      end
    end

  describe "appointment time conflict" do
    before do
      appointment.save!
    end
    context "appointment two starts after appointment one"

    let(:appointment_two) {Appointment.new(user_id: 2, room_id: 2, start: Time.now, finish: 3.hours.from_now)}

      it "starts in the same room for the same appointment time" do
        Appointment.new(user_id: 2, room_id: 2, start: Time.now, finish: 3.hours.from_now)
        expect(appointment).to have(1).errors_on(:start)
      end
    end
  end
end




