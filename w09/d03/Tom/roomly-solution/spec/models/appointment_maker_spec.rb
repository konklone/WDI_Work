require 'spec_helper'

describe AppointmentMaker do
  let!(:room) { Room.create(name: "West Wing", hourly_rate: 20) }
  let!(:user) { User.create(name: "Jeff", email: "jeff@ga.co") }
  let(:appointment) { Appointment.new(room: room, user: user, start: Time.now, finish: 3.hours.from_now) }
  let!(:account) { Account.create(user: user, balance: 100) }

  # subject is syntactic sugar a glorified let
  subject(:scheduled) { AppointmentMaker.new(room) }

  describe "#make" do
    context "room unavailable" do
      before do
        Appointment.create(room: room, user_id: 99, start: 1.hour.from_now, finish: 5.hours.from_now)
      end

      it "does not make" do
        expect(scheduled.make(appointment, account)).to be_false
        expect(appointment).not_to be_persisted
      end
    end

    context "room available" do
      context "user can pay" do
        it "makes" do
          expect(scheduled.make(appointment, account)).to be_true
          expect(appointment).to be_persisted
        end
      end

      context "user cannot pay" do
        before { appointment.finish = 1.week.from_now }

        it "doesn't make the appt" do
          expect(scheduled.make(appointment, account)).to be_false
          expect(appointment).not_to be_persisted
        end
      end
    end
  end
end