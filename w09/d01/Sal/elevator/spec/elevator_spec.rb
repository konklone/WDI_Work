require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do 
  let(:elevator) { Elevator.new }

describe '::new' do
  it 'creates a new elevator' do
    expect(elevator).to_not eq nil
  end

  it 'has 10 floors' do
    expect(elevator.floors.count).to eq(10)
  end

  it 'can go up or down' do
    expect(elevator)
  end
end

describe '#going_up?' do
  it 'goes up from current floor' do
    expect(elevator.going_up?("Floor 5", "Floor 8")).to be(true)
  end

  it 'cannot go up from the 10th floor' do
     expect(elevator.going_up?("Floor 10", "Floor 11")).to be(nil)
  end
end

describe '#going_down?' do
  it 'goes down from current floor' do
    expect(elevator.going_down?("Floor 8", "Floor 6")).to be(true)
  end

  it 'cannot go down from the first floor' do
    expect(elevator.going_down?("Floor 1", "Floor Bacon")).to be(nil)
  end
end


end