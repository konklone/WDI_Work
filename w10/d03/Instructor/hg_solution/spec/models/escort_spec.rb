require 'spec_helper'

describe Escort do
  subject(:haymitch) { FactoryGirl.build(:escort, district: district) }

  let(:district) { FactoryGirl.create(:district) }
  let(:katniss) { FactoryGirl.create(:tribute, district: district) }
  let(:finick) { FactoryGirl.create(:tribute) }

  describe "#tributes" do
    it "has tributes from it's district" do
      expect(haymitch.tributes).to include(katniss)
    end

    it "doesn't have tributes from other districts" do
      expect(haymitch.tributes).not_to include(finick)
    end
  end
end