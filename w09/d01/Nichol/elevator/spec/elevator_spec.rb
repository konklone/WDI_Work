# Elevators, Floors, and (probably) a Dispatcher - 10 floors - A floor can call an elevator to go up or down - The top floor can only call for down - The bottom floor can only call for up - An elevator is either heading up or down - People can call specific floors within the elevator - if an elevator is heading up, it only stops at floors either called internally or on floors calling in the direction the elevator is going (on the way) - example, the elevator is on floor two heading up. internally floors 4 and 6 are pressed. Floor 8 has requested down and Floor 9 has requested up. We hit 4, 6, and 9. And then we head down hitting floor 8. - If there are no requests for the elevator, then it is neither heading up nor down. It will go to the next floor that calls it in either direction.

# UPDATE

# Forget about the floors calling for the elevator. The elevator can only be called internally. It still heads in just 1 direction, and ignores calls to floors not on it's way. But start first with just the internal calls


require 'spec_helper'
require_relative '../lib/elevator'


describe Elevator do
  let(:elevator) { Elevator.new }

  describe "::new" do
    it "creates a new elevator" do
      expect(elevator).to_not eq(nil)
    end

    it "starts at floor 0" do
      expect(elevator.floor).to eq(0)
    end


    it "isn't moving and has no direction" do
      expect(elevator.status).to eq(0)
    end

    it "has nowhere to go" do
      expect(elevator.queue.length).to eq(0)
    end

  end
  
  describe "#makeInternalCall" do
    it "should register what button the user pushed" do
      elevator.makeInternalCall(5)
      expect(elevator.queue.length).to_not eq(0)
    end

    it "shouldn't register the floor pushed if its the floor the elevator is already on" do
      elevator.makeInternalCall(0)
      expect(elevator.queue.length).to eq(0)
    end

  end

  describe "#move" do
  end

end















