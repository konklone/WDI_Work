require 'spec_helper'

describe Citizen do
  subject(:citizen) { Citizen.new }

  # describe "#birth_year" do
  #   it "is not valid without a birth year" do
  #     expect(citizen).to have(1).errors_on(:birth_year)
  #   end

  #   it "is valid with a birth year" do
  #     expect(citizen).to have(0).errors_on(:birth_year)
  #   end
  # end

  describe "validations" do
    it { should validate_presence_of(:birth_year) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:district_id) }

    it { should belong_to(:district) }
  end
end