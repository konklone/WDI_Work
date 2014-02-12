require_relative '../lib/water_bottle'

describe WaterBottle do

  subject(:bottle) { WaterBottle.new }

  describe '::new' do
    it "starts empty" do
      expect(bottle.empty?).to be_true
    end
  end

  describe '#drink' do 
    context "when empty" do
      it "deosn't allow you to drink" do
        expect{bottle.drink}.to raise_error "This bottle is empty!"
      end
    end

    context "when full" do
      before do 
        bottle.fill
      end

      it "allows you to drink" do
        expect(bottle.drink).to eq(:water)
      end

      it "becomes empty" do
        bottle.drink
        expect(bottle.empty?).to be_true
      end
    end

  end

  # describe '#full' do
  #   it "is full" do
  #     expect(bottle.empty?).to be_false
  #   end

  #   it "is not full" do
  #     expect(bottle.empty?).to be_true
  #   end
  # end

end