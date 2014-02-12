require 'spec_helper'

describe Preliminary do
  let(:game) { FactoryGirl.create(:game) }
  let!(:tribute) { FactoryGirl.create(:tribute, game: game) }

  subject(:prelim) { Preliminary.new(game) }

  describe "#run" do
    before do
      prelim.run

      # need to refresh data
      tribute.reload
    end

    it "assigns each tribute a rating" do
      expect(1..10).to cover(tribute.rating)
    end
  end
end