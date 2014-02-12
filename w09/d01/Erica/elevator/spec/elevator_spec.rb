require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do 
  let(:elevator) { Elevator.new }

  describe '::new' do
    it 'creates an elevator' do
      expect(elevator).to_not eq nil
    end

    it 'has ten floors' do
      expect(elevator.floors).to eq(10)
    end
  end

  describe 'direction' do
    it 'keeps track of direction' do
      expect(elevator.direction).to_not eq nil
    end
  end

  describe '#ascend' do
    it 'works' do
      expect(elevator.ascend(1)).to_not eq nil
    end

    it 'goes up' do
      elevator.ascend(1)
      expect(elevator.direction).to eq("up")
    end

    it 'goes somewhere' do
      elevator.ascend(5)
      expect(elevator.destination).to eq(5)
    end

    it 'requires a new destination' do
      expect(elevator.ascend(0)).to eq("You are already on this floor.")
    end

    it 'arrives at the destination' do
      elevator.ascend(5)
      expect(elevator.current_floor).to eq(5)
    end

    it 'only allows you to ascend to floors above you' do 
      elevator.ascend(4)
      expect(elevator.ascend(2)).to eq("Wrong direction.")
    end

    it 'can only go to floors that exist' do
      expect(elevator.ascend(11)).to eq("This floor does not exist.")
    end
  end

  describe '#descend' do
    it 'goes down' do
      elevator.descend(1)
      expect(elevator.direction).to eq("down")
    end

    it 'can descend after ascending' do
      elevator.ascend(2)
      elevator.descend(1)
      expect(elevator.direction).to eq("down")
    end     

    it 'requires a new destination' do
      expect(elevator.descend(0)).to eq("You are already on this floor.")
    end

    it 'arrives at the destination' do
      elevator.ascend(3)
      elevator.descend(1)
      expect(elevator.current_floor).to eq(1)
    end

    it 'only allows you to descend to floors below you' do
      elevator.ascend(5)
      expect(elevator.descend(6)).to eq("Wrong direction.")
    end

    it 'can only go to floors that exist' do
      expect(elevator.descend(-1)).to eq("This floor does not exist.")
    end
  end

  describe 'current_floor' do
    it 'shows its current floor' do
      expect(elevator.current_floor).to_not eq nil
    end

    it 'starts on the ground floor' do
      expect(elevator.current_floor).to eq(0)
    end
  end

  describe 'destination' do
    it 'shows the floor you want to visit' do
      expect(elevator.destination).to eq(elevator.current_floor)
    end
  end
end