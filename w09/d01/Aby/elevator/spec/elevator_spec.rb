### Pair Activity

require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do
  let(:elevator) { Elevator.new }

  describe '::new' do
    it 'creates a new elevator' do
      expect(elevator).to_not eq nil
    end

    it 'has ten floors' do
      expect(elevator.floors.length).to eq(10)
    end

    it 'goes up' do
      expect(elevator.direction).to eq("up")
    end

    it 'starts at the bottom floor' do
      expect(elevator.floor).to eq(1)
    end
  end


  describe '#call_floor' do

    it 'checks to see if floor is the right direction' do
      elevator.call_floor(2)
      expect(elevator.called_floors).to eq([2])
    end
  end

  describe '#trip' do
    it 'determines the floor to stop on'
end
