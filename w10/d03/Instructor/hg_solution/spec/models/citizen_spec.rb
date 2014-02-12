require 'spec_helper'

describe Citizen do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:birth_year) }
    it { should validate_presence_of(:district_id) }
    it { should validate_presence_of(:gender) }
    it { should belong_to(:district) }
    it { should ensure_inclusion_of(:gender).in_array(["m", "f"]) }
  end

  describe '::random' do
    before { 5.times { FactoryGirl.create(:citizen) } }

    it "returns a random citizen" do
      expect(Citizen.all).to include(Citizen.random.first)
    end
  end

  describe "scopes" do
    let!(:gale) { FactoryGirl.create(:citizen, gender: "m", birth_year: 20.years.ago.year) }
    let!(:posy) { FactoryGirl.create(:citizen, gender: "f", birth_year: 4.years.ago.year) }

    describe "::male" do
      it "returns male citizens" do
        men = Citizen.male
        expect(men).to include(gale)
        expect(men).not_to include(posy)
      end
    end

    describe "::female" do
      it "returns female citizens" do
        women = Citizen.female
        expect(women).not_to include(gale)
        expect(women).to include(posy)
      end
    end

    describe "::teen" do
      let!(:primm) { FactoryGirl.create(:citizen, gender: "f", birth_year: 12.years.ago.year) }
      let!(:katniss) { FactoryGirl.create(:citizen, gender: "f", birth_year: 18.years.ago.year) }

      it "returns teenagers between 12 and 18, inclusive" do
        teens = Citizen.teen
        expect(teens).not_to include(gale)
        expect(teens).not_to include(posy)

        expect(teens).to include(primm)
        expect(teens).to include(katniss)
      end
    end
  end
end
