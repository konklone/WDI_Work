require 'spec_helper'

describe Chef do

  let(:chef) { Chef.new }

  describe '#name' do
    context "with a name" do
      it "is valid" do
        chef.name = "Pierre"
        expect(chef).to have(0).errors_on(:name)
      end    
    end

    context "with no name" do
      it "isn't valid" do
        expect(chef).to have(1).errors_on(:name)
      end
    end
  end

  describe '#make_dish' do
    it "creates a dish" do
      expect(chef.make_dish("Penne", 1)).to be_persisted
    end

    it "cannot make more than one dish per round" do
      chef.make_dish("Penne", 1)
      expect(chef.make_dish("Sketti", 1)).to be_false
    end
  end

  describe "get chef's dishes" do
    context "chef has made a dish" do
      before do
          chef.name = "joe"
          chef.id = 2
          chef.make_dish("Penne", 1)
      end
      it "returns dishes created by chef" do
        expect(chef.dishes.count).to be >= 1
      end
    end

    context "chef has not made a dish" do
      before do 
        chef.name = "joe"
        chef.id = 2
      end
      it "does not return a dish" do
        expect(chef.dishes.count).to be(0)
      end
    end
  end

  describe "#episode" do
    context "with an episode" do
      it "is valid" do
        chef.name = "Pierre"
        chef.episode_id = 1 
        expect(chef).to be_valid
      end
    end

    context "with no name" do
      it "isn't valid" do
        expect(chef).to have(1).errors_on(:episode_id)
      end
    end
  end
end