require_relative '../lib/water_bottle'

describe WaterBottle do

  subject(:water_bottle) { WaterBottle.new }

  context "when empty" do
    before { water_bottle.drink }

    it "is empty" do
      expect(water_bottle.empty?).to be_true
      expect(water_bottle.full?).to be_false
    end

    context "when water_bottle.drink" do
      it should respond with "Bottle empty error!"
    end

    describe '.fill' do
      it "fills the water bottle" do 
        expect(water_bottle.empty?).to be_false
        expect(water_bottle.full?).to be_true
      end
    end
  end

  context "when full" do
    before { water_bottle.fill }

    it "is full" do
      expect(water_bottle.empty?).to be_false
      expect(water_bottle.full?).to be_true
    end

    describe '.drink' do
      it "empties the water bottle" do
        expect(water_bottle.empty?).to be_true
        expect(water_bottle.full?).to be_false
      end
    end
  end
end