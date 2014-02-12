require 'spec_helper'
require_relative '../lib/elevator'


describe Elevator do
  let(:elev) { Elevator.new }

  describe "#stops" do
    it "has 10 stops" do
      expect(elev.stops.length).to eq(10)
    end
  end

  describe "#calls" do
    before do
      elev.check_floor
    end

    it "goes up" do
      expect(elev.up(1)).to eq true
    end

    it "goes does" do
      expect(elev.down).to eq true
    end

    it "can't go up if at floor 10" do
      expect(elev.up(10)).to eq false
    end

  end

end