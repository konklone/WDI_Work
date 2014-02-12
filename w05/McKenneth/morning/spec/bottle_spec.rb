require_relative '../lib/bottle'

describe Bottle do
  subject(:bottle) {Bottle.new}

  describe "::new" do
    context "when empty" do
      before {bottle.empty?}

      it "starts empty" do
        expect(bottle.empty?).to be_true
      end
    end
  end

  # context "when drink" do
  #   before {bottle.drink!}
  #   it "is empty" do
  #     expect(bottle.empty?).to be_true
  #   end
  # end

  # context "when fill" do
  #   before {bottle.fill!}

  #   it "is full" do
  #     expect(bottle.empty?).to be_false
  #   end
  # end

  describe '#drink' do
    context "when empty" do
      it "doesn't allow you to drink" do
        expect { bottle.drink }.to raise_error "This bottle is empty"
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

  
end