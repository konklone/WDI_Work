require 'spec_helper'

describe Campaign do
  let(:tribute) { FactoryGirl.create(:tribute) }
  let(:sponsor) { FactoryGirl.create(:sponsor) }

  subject(:campaign) { Campaign.new(tribute) }

  describe "#acquire_sponsor" do
    it "gains sponsors for the tribute" do
      campaign.acquire_sponsor(sponsor)

      expect(tribute.sponsors).to include(sponsor)
    end
  end

  describe "#random_acquisition" do
    before do
      3.times { FactoryGirl.create(:sponsor) }
    end

    it "acquires random sponsors" do
      campaign.random_acquisition

      expect(0..4).to cover(tribute.sponsors.count)
    end
  end
end