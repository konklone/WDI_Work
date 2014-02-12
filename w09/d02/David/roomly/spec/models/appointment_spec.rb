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

    context "start after finish" do
      it "is not valid" do
        appointment.start = 1.year.from_now
        expect(appointment).to have(1).errors_on(:start)
      end
    end
  end

  describe "appointments for rooms" do
    let(:new_appt) do
      new_appt = Appointment.new(user_id: 1, room_id: 3, start: Time.now, finish: 3.hours.from_now)
    end
    context "appointments can be made for different rooms" do
      it "is valid" do
       appointment.save!
       expect(new_appt).to be_valid
      end
    end
    context "appointments for the same room don't overlap in time" do
      it "it is not valid" do
        appointment.save!
        new_appt.room_id = 2
        expect(new_appt).to have(1).errors_on(:room_id)
      end
    end
  end

  describe "rates for rooms" do
    before do
      user = User.create(name: "jeff", email: "jeff@ga.com")
      account = user.build_account.save #default balance in DB is $100
    end
    context "user rents a room for less money than they have in account" do
      it "is valid" do
        user = User.find_by(name: "jeff")
        room = Room.new(name: "Dollar Bang", hourly_rate: 10)
        start = (appointment.start.to_i/(60 * 60)).round
        finish = (appointment.finish.to_i/(60 * 60)).round
        expect(user.account.balance).to be > room.hourly_rate * (finish - start)
      end
    end
    context "user rents a room for more money than they have in the account" do
      it "it is not valid" do
        room = Room.create(name: "Dollar Bang")
        room.id = 2
        room.hourly_rate = 300
        user = User.create(name: "jeff", email: "jeff@ga.co")
        user.id = 1
        account = user.build_account.save
        user.account.balance = 200
        expect(appointment).to have(1).errors_on(:user_id)
      end
    end
  end

  # pending "same start/end time for same room"
end






# 1. Appointments can't be at the same time for the same room

# 2. A user is charged for a room. (Hourly rate of room * number of hours).
# - This will require an extra model/table => Account. It should have a balance.
# - A user cannot rent a room without enought money in their balance to pay for it.



