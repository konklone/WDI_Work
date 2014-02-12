require_relative '../lib/water_bottle'

describe WaterBottle do

  #SETS UP AN INSTANCE OF A CLASS THAT WE CAN USE IN TESTS
  subject(:bottle) { WaterBottle.new }

  it "starts empty" do
      expect(bottle.empty?).to be_true
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
    end
  end

end