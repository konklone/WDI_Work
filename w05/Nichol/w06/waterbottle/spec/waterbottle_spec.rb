require_relative '../lib/waterbottle'

describe Waterbottle do
  
  subject(:waterbottle) { Waterbottle.new }

  context "when empty" do
    before { waterbottle.empty! }

    it "is empty" do
      expect(waterbottle.empty?).to be_true
    end
  end

  it "is full" do
    expect(waterbottle.empty?).to be_false
  end
end