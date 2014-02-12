require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do
  let(:elevator) { (Elevator.new(10)) }

  describe'::new' do
    it 'creates a new elevator' do
      expect(elevator).to_not eq nil
    end
    it 'has floors' do
      expect(elevator.floors.count).to eq(10)
    end

    it 'has an empty request queue' do
      expect(elevator.request_queue.count).to eq(0)
    end
  end

  describe '#current_floor'do
    it 'tells me my current floor'do
      expect(elevator.current_floor).to eq (1)
    end
  end

  describe '#direction' do
    context 'request queue is nil?' do
      it 'tells me the direction is none' do
       expect(elevator.direction).to eq :none
      end
    end

    context 'request has one up request' do
      before do
        elevator.request_queue.push(10)
      end

      it 'tell me im going up'do
         expect(elevator.direction).to eq :up
     end
    end

     context 'request has one down request' do
      before do
        elevator.current_floor=10
        elevator.request_queue.push(8)
      end
      it 'tell me im going down'do
         expect(elevator.direction).to eq :down
     end
    end
  end

  # describe '#change_floors' do
  #   it 'allows change in direction' do
  #     expect(elevator.floors)
  #   end
  # end
end