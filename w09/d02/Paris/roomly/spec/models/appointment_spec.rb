# Appointments can't overlap for the same room.

require 'spec_helper'

describe Appointment do
  let(:appointment) do
    Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
    Appointment.new(user_id: 2, room_id: 2, start: Time.now, finish: 3.hours.from_now)
    Appointment.new(user_id: 3, room_id: 3, start: Time.now, finish: 3.hours.from_now)
  end

 it "is valid if it haz all the attributes" do
  expect(appointment).to be_valid
 end 

 it "is invalid without a user_id" do
  appointment.user_id = nil
  expect(appointment).to have(1).errors_on("user_id")
 end

 it "is invalid without a room_id" do
  appointment.room_id = nil
  expect(appointment).to have(1).errors_on("room_id")
 end

 it "is invalid without a start time" do
  appointment.start = nil
  expect(appointment).to have(1).errors_on("start")
 end

 it "is invalid without a finish time" do
  appointment.finish = nil
  expect(appointment).to have(1).errors_on("finish")
 end

 describe "start/finish" do
  # check that the start time is before the finish time
    context "start before finish" do
      it "is valid" do
        expect(appointment).to have(0).errors_on("start")
      end
    end

    context "start after finish" do
      it "is not valid" do
        appointment.start = 1.year.from_now
        expect(appointment).to have(1).errors_on("start")
      end
    end
    
  end

  describe "different rooms" do
    context "start in different rooms for the same appointment times" do
      it "is valid" do
        expect(appointment).to have(0).errors_on("start")
      end
    end

    context "start in the same room for the same appointment time" do
      it "is not valid" do
        Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
        Appointment.new(user_id: 2, room_id: 2, start: Time.now, finish: 3.hours.from_now)
        expect(appointment).to have(1).errors_on("start")
      end
    end

  end

  describe "deduct room charge" do
    context "user has sufficient funds for a room" do
      it "is valid" do
        # the user's balance should be deducted hourly_rate * hours. 
        expect(appointment).to have(0).errors_on("user_id")
      end
    end

    context "user doesn't have sufficient funds for a room" do
      it "is not valid" do
        Account.new(user_id: 1, balance: 0)
        Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
        Room.new(name: "room 1", hourly_rate: 50)
        expect(appointment).to have(1).errors_on("user_id")
      end
    end
  end


end
