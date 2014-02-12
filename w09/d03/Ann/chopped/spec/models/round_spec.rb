require 'spec_helper'

describe Round do
  let(:round) { Round.new }

  describe '#category' do
    context "has a category" do
      it "is valid" do
        round.category = "dinner"
        expect(round).to be_valid
      end
    end

    context "has no category" do
      it "isn't valid" do
        expect(round).to have(1).errors_on(:category)
      end
    end
  end

  describe '#chefs' do 
    let(:chef) { Chef.new(name: "Brad") } 
    let(:round) {Round.new(category: "dinner")}

    before do 
      round.save 
      chef.save 
    end 

    it "has many chefs" do 
      round.chefs << chef  
      round.chefs.reload 
      expect(round.chefs).to include(chef) 
    end 
  end 

  describe '#eliminate_chefs' do 
    appetizer = Round.create(category: "appetizer")
    entree = Round.create(category: "entree")
    dessert = Round.create(category: "dessert")

    # it "has four chefs in the appetizer round"
      
    # end 

    # it "has three chefs in the entree round"

    # end 

    # it "has two chefs in the dessert round"

    # end 
  end 


end 

 
