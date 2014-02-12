require 'spec_helper'

describe Chef do
  let(:chef) { Chef.new(name: "Edward") }

  context "with a name" do
    it "it is valid" do
      expect(chef).to be_valid
    end
  end

  context "without a name" do
    it "it is not valid" do
      chef.name = nil
      expect(chef).to have(1).errors_on(:name)
    end
  end

  context "the chef name is already taken" do
    it "is not valid" do
      Chef.create(name: "Edward")
      expect(chef).to have(1).errors_on(:name)
    end
  end
end