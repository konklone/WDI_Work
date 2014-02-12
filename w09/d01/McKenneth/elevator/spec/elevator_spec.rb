require 'spec_helper.rb'
require_relative '../lib/elevator'

describe Elevator do
  let(:elevator){Elevator.new()}
  describe "::new" do
    it "has floor selections" do
      expect(elevator.floors).to_not eq(nil)
    end

    it "has 10 floors" do
      expect(elevator.floors.count).to eq(10)
    end

    it "has a direction" do
      expect(elevator.direction).to eq("up" || "down")
    end
  end

  describe "#current_floor" do
    it "has a current floor" do
      expect(elevator.current_floor(1)).to_not eq(nil)
    end
  end

  describe "#call" do
    it "can call the elevator in a direction" do
      elevator.current_floor(elevator.floors[3])
      elevator.call("up")
      expect(elevator.direction).to eq("up")
    end

    it "can call the elevator to go down" do
      elevator.current_floor(elevator.floors[3])
      elevator.call("down")
      expect(elevator.direction).to eq("down")
    end

    it "can only go down if on the top floor" do
      elevator.current_floor(elevator.floors.last)
      elevator.call("up")
      expect(elevator.direction).to eq("down")
    end

    it "can only go up if you are on the bottom floor" do
      elevator.current_floor(elevator.floors.first)
      elevator.call("down")
      expect(elevator.direction).to eq("up")
    end
  end

  describe "#call_floor" do

    it "can go to a certain floor" do
      elevator.current_floor(elevator.floors[2])
      elevator.call("up")
      
      expect(elevator.call_floor(10 )).to eq(true)
    end

    it "can only go to a floor if direction correct" do
      elevator.current_floor(elevator.floors[2])
      elevator.call("down")
      
      expect(elevator.call_floor(6)).to eq(false)
    end
  end

end