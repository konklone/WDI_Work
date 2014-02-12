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
    # appointment.valid?
    # -> running each method in the validation chain
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

    context "finish before start" do
      it "is not valid" do
        appointment.start = 1.year.from_now
        expect(appointment).to have(1).errors_on(:start)
      end
    end

    context "same start/end time for same room" do
      before do
        appointment2 = Appointment.new(user_id:1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
        appointment2.save!
      end

      it "is not valid" do
        expect(appointment).to have(1).errors_on(:room_overlap)
      end

    end

  end
end