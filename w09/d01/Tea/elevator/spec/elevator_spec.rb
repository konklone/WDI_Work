require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do
let(:elevator) { Elevator.new}

  describe '::new' do
    it 'creates an elevator. the only elevator' do
      expect(elevator).to_not eq nil
    end

    it 'has ten floors' do
      expect(elevator.floors.count).to eq(10)
    end
  end

  describe '#call' do
    it 'goes to a floor' do
      elevator.go_to("up", 4)
      expect(elevator.current_floor).to eq(4)
    end

    it 'goes to another floor' do
      elevator.go_to("down", 8)
      expect(elevator.current_floor).to eq(1)
    end

    it 'only goes to a floor that is on its path' do
      elevator.go_to("up", 6)
      expect(elevator.current_floor).to eq(6)
    end
  end
end
