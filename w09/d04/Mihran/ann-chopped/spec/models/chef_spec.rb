require 'spec_helper'

describe Chef do
  let(:chef) { Chef.new }

  describe '#name' do
    context "has a name" do
      it "is valid" do
        chef.name = "Brad"
        expect(chef).to be_valid
      end
    end

    context "has no name" do
      it "isn't valid" do
        expect(chef).to have(1).errors_on(:name)
      end
    end

    context "with a taken name" do
     before do
       Chef.create(name: "Brad")
     end

     it "isn't valid" do
       chef.name = "Brad"
       expect(chef).to have(1).errors_on(:name)
     end
    end
  end

   describe '#rounds' do 
    let(:chef) { Chef.new(name: "Brad") } 
    let(:round) {Round.new(category: "dinner")}

    before do 
      round.save 
      chef.save 
    end 

    it "has many rounds" do 
      chef.rounds << round  
      chef.rounds.reload 
      expect(chef.rounds).to include(round) 
    end 
  end 
end 

