require 'spec_helper'

describe Appointment do
   let(:appointment) do
      Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
   end

   it 'is valid if it has all the attributes' do
      expect(appointment).to be_valid
   end

   it 'is invalid without a user_id' do
      appointment.user_id = nil
      expect(appointment).to have(1).errors_on(:user_id)
   end

   it 'is invalid without a room_id' do
      appointment.room_id = nil
      expect(appointment).to have(1).errors_on(:room_id)
   end

   it 'is invalid without a start time' do
      appointment.start = nil
      expect(appointment).to have(1).errors_on(:start)
   end

   it 'is invalid without a finish time' do
      appointment.finish = nil
      expect(appointment).to have(1).errors_on(:finish)
   end

   describe 'start/finish' do
      context 'start time is earlier than finish time' do
         it 'is valid' do
            expect(appointment).to have(0).errors_on(:start)
         end
      end

      context 'start time is later than finish time' do
         it 'is not valid' do
            appointment.start = 1.year.from_now
            expect(appointment).to have(1).errors_on(:start)
         end
      end
   end

   describe 'same start/finish time for same room' do
      before do
         Appointment.new(user_id: 2, room_id: 2, start: 1.hour.from_now, finish: 5.hours.from_now)
      end
      
      context 'cannot overlap' do
         it 'is not valid' do
            expect(appointment).to have(1).errors_on(:room_id)
         end
      end
   end

end
