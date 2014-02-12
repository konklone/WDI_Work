require 'spec_helper'

describe Chef do 
  context "has valid attributes" do
    let(:chef) do
      Chef.new(name: "Emeril Lagasse")
    end

    it "is valid" do
      expect(chef).to be_valid
    end   
  end

  context "has invalid attributes" do
    let(:chef) do
      Chef.new(name: nil)
    end    

    it "is invalid" do
      expect(chef).to have(1).errors_on(:name)
    end
  end

  context "four chefs in total" do
      let(:chef1){Chef.create(name: "Alain Ducasse")}
      let(:chef2){Chef.create(name: "Wolfgang Puck")}
      let(:chef3){Chef.create(name: "Anthony Bourdain")}
      let(:chef4){Chef.create(name: "Barefoot Contessa")}
    before do
      chef1.save
      chef2.save
      chef3.save
      chef4.save
    end

    it "has four chefs" do
      chefs = Chef.all
      expect(chefs.count).to eq(4)
    end
  
  describe "#check_chefs" do
    context "it checks for chefs" do
      it 'can only have four chefs' do
        chef.check_chefs = nil
        expect(chefs.check_chefs).to have(1).errors_on(:)
      end
    end
  end
end