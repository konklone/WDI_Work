require 'spec_helper'
require_relative '../lib/elev'

describe Elevator do
  
  let(:elevator) {Elevator.new(3, "up")}

  describe '#floors' do
    it "has ten floors" do
      expect(elevator.floors.count).to eq(10)
    end
  end

  describe '#call_floor' do
    it "allows users to call a floor above it if moving up" do
      elevator.call_floor(6)
      expect(elevator.called_floors).to include(6)
    end

    it "disallows users to call a floor below (if moving up)" do
      elevator.call_floor(2)
      expect(elevator.called_floors).to eq([])
    end

    it "disallows users to call a floor above (if moving down)" do
      elevator.change_direction
      elevator.call_floor(5)
      expect(elevator.called_floors).to eq([])
    end

    it "allows users to call a floor below it if moving down" do
      elevator.change_direction
      elevator.call_floor(2)
      expect(elevator.called_floors).to include(2)
    end

    it "doesnt let you go up if you are on 10fl" do
      elevator.update_floor(10)
      expect(elevator.direction).to eq("down")
    end

    it "doesnt let you go down if you are on the 1st fl" do
      elevator.update_floor(1)
      expect(elevator.direction).to eq("up")
    end

  end


end  
