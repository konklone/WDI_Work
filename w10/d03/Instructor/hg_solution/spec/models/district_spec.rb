require 'spec_helper'

describe District do
  describe "validations" do
    it { should validate_presence_of(:number) }
    it { should have_many(:citizens) }
  end

  describe "#capitol?" do
    subject(:district) { FactoryGirl.build(:district) }

    it "is the capitol when 0" do
      district.number = 0
      expect(district).to be_capitol
    end

    it "is not the capitol when not 0" do
      district.number = 10
      expect(district).not_to be_capitol
    end
  end
end
