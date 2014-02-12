require_relative '../lib/waterbottle'

describe WaterBottle do

  subject(:bottle) { WaterBottle.new }

  it "is empty when first created" do
    expect(bottle).to be_empty
  end

  describe '#drink' do
    context 'when empty' do
      it "doesn't allow you to drink" do
        expect { bottle.drink }.to raise_error "This bottle is empty!"
      end
    end

    context 'when full' do
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