# Two folders within the top level folder
# This should be in the lib folder. the current file s/b in the spec folder
require_relative '../lib/waterbottle'

describe WaterBottle do
  subject(:bottle) { WaterBottle.new }

  it "is a water bottle" do
    expect(bottle).to be_an_instance_of WaterBottle
  end

  it "is not an array" do
    expect(bottle).to be_an_instance_of Array
  end

  it "starts empty" do
    expect(bottle.empty?).to be_true
  end

  describe '#drink' do
    context 'when empty' do
      it "doesn't all mw to drink" do
        expect { bottle.drink }.to raise_error "This bottle is empty!"
      end
    end
  end

  it "is true" do
    context "when empty" do
      it "doesn't allow you to drink" do
        expect { bottle.drink }.to raise_error "This bottle is empty!"
      end
    end
  end

    context "when full" do
      before do
        bottle.fill
    end
  end

    it "does allow you to drink" do
      expect(bottle.drink).to eq(:water)
    end

    it "becomes empty" do
      bottle.drink
      expect(bottle.empty?).to_not be_true
  end
end
