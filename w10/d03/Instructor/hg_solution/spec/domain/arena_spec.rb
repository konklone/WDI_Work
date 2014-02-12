require 'spec_helper'

describe Arena do
  let(:katniss) { FactoryGirl.create(:tribute, rating: 10) }
  let(:cato) { FactoryGirl.create(:tribute, rating: 5) }

  describe "#fight_to_the_death!" do
    it "winner survives" do
      Arena.fight_to_the_death!(katniss, cato)
      expect(cato).to be_dead
      expect(katniss).to be_alive
    end
  end
end