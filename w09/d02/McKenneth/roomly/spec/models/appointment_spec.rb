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

  it "is invalid without an end time" do
    appointment.finish = nil
    expect(appointment).to have(1).errors_on(:finish)
  end


  describe "start/finish" do
    context "start before finish" do
      it "is valid if start is before finish" do
        expect(appointment).to have(0).errors_on(:start)
      end
    end
    context "start after finish" do
      it "is invalid if start is after finish" do
        appointment.start = 1.year.from_now
        expect(appointment).to have(1).errors_on(:start)
      end
    end
  end

  describe "appointment overlap" do
      before do
        appointment.save! 
      end
      context "appointments 2 starts after appointment one" do
      
      let(:another_app) {Appointment.new(user_id: 2, room_id: 2, start: 4.hours.from_now, finish: 5.hours.from_now)}

      it "is valid if appointment two starts after appointment one finish" do
        expect(another_app).to have(0).errors_on(:start)
      end
    end
    context "appoint 2 starts before appointment one" do
      let(:another_app) {Appointment.new(user_id: 2, room_id: 2, start: 2.hours.from_now, finish: 7.hours.from_now)}
      it "is invalid if appointment two starts before appointment one ends" do
        expect(another_app).to have(1).errors_on(:start)
      end
    end
  end

end
