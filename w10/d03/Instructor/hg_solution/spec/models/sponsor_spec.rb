require 'spec_helper'

describe Sponsor do
  it { should have_and_belong_to_many(:tributes) }

  describe "#district" do
    subject(:sponsor) { FactoryGirl.build(:sponsor) }

    let(:capitol) { FactoryGirl.create(:capitol) }
    let(:district_12) { FactoryGirl.create(:district, number: 12) }

    it "can belong to the capitol" do
      sponsor.district = capitol
      expect(sponsor).to have(0).errors_on(:district)
    end

    it "can't belong to a common district" do
      sponsor.district = district_12
      expect(sponsor).to have(1).errors_on(:district)
    end
  end
end