require 'spec_helper'
require_relative '../lib/elevator'


describe Elevator do
  let(:elevator) { Elevator.new() }

  describe "::new" do
    it "is an elevator" do
     expect(elevator).to be_an_instance_of Elevator
    end
  end

  describe "#move" do
    it "elevator is not moving" do
      expect(elevator.move(1,1)).to be_false
    end
  end

  describe "#up" do
    it "elevator is going up" do
      elevator.move(1,10)
      expect(elevator.up).to eq(true)
    end
  end

  describe "#down" do
    it "elevator is going up" do
      elevator.move(10, 1)
      expect(elevator.down).to eq(true)
    end
  end

  describe "#call" do
    it "floor calls an elevator to go up" do
      elevator.call(8, 10)
      expect(elevator.up).to be_true
    end
  end


   



end