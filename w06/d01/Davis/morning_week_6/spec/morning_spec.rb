require_relative '../lib/morning'

describe WaterBottle do
  # create new bottle instance
  subject(:bottle) { WaterBottle.new }

  describe '::new' do
    it "is a water bottle" do
      expect(bottle).to be_an_instance_of WaterBottle
    end

    it "is not an array" do
      expect(bottle).to_not be_an_instance_of Array
    end

    it "starts empty" do
      expect(bottle.empty).to be_true
    end
  end

  describe '#drink' do
    context "when empty" do
      it "doesn't allow you to drink" do
        # note epxect {} is a block NOT same as expect()
        expect { bottle.drink }.to raise_error "This bottle is empty!"
      end
    end

    context "when full" do
      # sets up context 
      before do
        # make bottle full
        bottle.fill
      end

      it "does allow you to drink" do
        expect(bottle.drink).to eq(:water)
      end

      it "allows you to drink up to only 5 times" do
        expect(bottle.drink).to eq()
      end
    end
  end

  
end