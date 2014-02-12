require 'spec_helper'

describe Account do
  let(:acc) {Account.new}
 
  describe "#userid" do
    context 'no user_id' do
      it "isnt valid" do
        expect(acc).to have(1).errors_on(:user_id)
      end
    end
    context 'has user_id' do
      before do
        acc.user_id = 1
      end
      it "is valid" do
        expect(acc).to have(0).errors_on(:user_id)
      end
    end

    describe "#balance" do
      context "no balance" do
        it "is not valid" do
          expect(acc).to have(1).errors_on(:balance)
        end
      end

      context "has balance" do
        before do
          acc.balance = 200
        end
        it "is valid" do
          expect(acc).to have(0).errors_on(:balance)
        end
      end
    end

    describe "charging user" do
      let(:user) {User.new}
      let(:room) {Room.new}
      let(:app) {Appointment.new}
      let(:acc) {Account.new(user_id: 1, balance: 25)}

      context "has account" do
        before do
          user.id = 1
          room.hourly_rate = 25
          
          acc.balance = 25
          acc.save!
          end
        it "charges the user" do
          a = Account.where(user_id: user.id)
            a[0].balance = a[0].balance - room.hourly_rate*(1)
          expect(a[0]).to have(0).errors_on(:balance)
        end
      end
      
      context "has account" do
        before do
          user.id = 1
          room.hourly_rate = 25
          
          acc.balance = 0
          acc.save!
          end
        it "charges the user only with a balance" do
          a = Account.where(user_id: user.id)
            a[0].balance = a[0].balance - room.hourly_rate*(1)
          expect(a[0]).to have(1).errors_on(:balance)
        end
      end
    end
  end
end