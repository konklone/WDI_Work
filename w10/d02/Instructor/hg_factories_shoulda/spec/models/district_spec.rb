require 'spec_helper'

describe District do
  describe "validations" do
    it { should validate_presence_of(:number) }
    it { should have_many(:citizens) }
  end

  describe "#random_citizen" do
    subject(:district) { FactoryGirl.create(:district) }

    let(:citizens) { [] }

    before do
      3.times { citizens << FactoryGirl.create(:citizen, district: district) }
    end

    it "finds a random citizen" do
      expect(citizens).to include(district.random_citizen)
    end
  end
end