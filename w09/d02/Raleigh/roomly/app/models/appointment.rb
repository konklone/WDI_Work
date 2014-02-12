class Appointment < ActiveRecord::Base
   validates :user_id, :room_id, :start, :finish, presence: true

   validate :start_before_finish, if: Proc.new {|user| user.finish? && user.start?} 
   validate :no_overlap, if: Proc.new {|user| user.finish? && user.start?} 

   private

   def start_before_finish
      #return unless finish.present? && start.present?
      if self.finish < self.start
         errors.add(:start, "Your start time is after your finish time")
      end
   end

   def no_overlap
      appt_list = Appointment.where("room_id = ?", self.room_id)
      # binding.pry
      appt_list.each do |appt|
         previous = appt.start..appt.finish
         if previous.cover?(self.start) || previous.cover?(self.finish)
            errors.add(:room_id, "This room is already booked")
         end
      end
   end
end
