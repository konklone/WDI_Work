require_relative '../lib/water_bottle'

describe WaterBottle do

  subject(:water_bottle) { WaterBottle.new }

  describe '::new' do
    it "is a water bottle" do
      expect(water_bottle).to be_an_instance_of WaterBottle
    end

    it "starts empty" do
      expect(water_bottle.empty?).to be_true
    end
  end

  describe '#drink' do
    context "when empty" do
      it "doesn't allow you to drink" do
        expect { water_bottle.drink }.to raise_error "This bottle is empty!"
      end
    end

    context "when full" do
      before { water_bottle.fill }

      it "does allow you to drink" do
        expect(water_bottle.drink).to eq(:water)
      end

      it "becomes empty" do
        water_bottle.drink
        expect(water_bottle.empty?).to be_true
      end
    end
  end

end