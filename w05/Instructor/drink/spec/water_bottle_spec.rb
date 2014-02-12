require_relative '../lib/water_bottle'

describe WaterBottle do
  subject(:bottle) { WaterBottle.new }

  describe '::new' do
    it "is a water bottle" do
      expect(bottle).to be_an_instance_of WaterBottle
    end

    it "is not an array" do
      expect(bottle).to_not be_an_instance_of Array
    end

    it "starts empty" do
      expect(bottle.empty?).to be_true
    end
  end

  describe '#drink' do
    context "when empty" do
      it "doesn't allow you to drink" do
        expect { bottle.drink }.to raise_error "This bottle is empty!"
      end
    end

    context "when full" do
      before do
        bottle.fill
      end

      it "does allow you to drink" do
        expect(bottle.drink).to eq(:water)
      end

      it "becomes empty" do
        bottle.drink
        expect(bottle.empty?).to be_true
      end
    end
  end

  # it "is true" do
  #   expect(true).to_not be_true
  # end

  # it "is false" do
  #   expect(false).to be_true
  # end

  # it "1 is 2" do
  #   expect(1).to eq(2)
  # end
end