require_relative '../lib/waterbottle'

describe Waterbottle do 
    subject(:waterbottle) { Waterbottle.new}

  it "is a waterbottle" do
    expect(waterbottle.new).to be_an_instance _of Waterbottle

  it "is not an array" do
    expect(waterbottle).to_not_be_an_instance_of Array

  context "when full" do
    before { waterbottle.full! }

    it "is full" do
      expect(waterbottle.full?).to be_true
  end 
end

context "when empty" do
  before { waterbottle.empty! }

  it "is empty" do
    expect(waterbottle.full?).to be_false
    end
  end
end