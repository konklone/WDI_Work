require 'spec_helper'

describe Episode do
  let(:episode) { Episode.new }

  describe '#name' do
    context "has a name" do
      it "is valid" do
        episode.name = "Tropicalia"
        # expect(episode).to have(0).errors_on(:name)
        #have(0).errors_on(:name)
      end
    end

    context "has no name" do
      it "isn't valid" do
        expect(episode).to have(1).errors_on(:name)
      end
    end

    context "with a taken name" do
     before do
       Episode.create(name: "Tropicalia")
     end

     it "isn't valid" do
       episode.name = "Tropicalia"
       expect(episode).to have(1).errors_on(:name)
     end
    end
  end
 

  describe '#judges' do 
    let(:episode) {Episode.new(name: "Tropicalia")}
    let(:judge) { Judge.new(name: "Ann") }

    before do 
      judge.save 
      episode.save 
    end 

    it "has many judges" do 
      episode.judges << judge 
      episode.judges.reload 

      expect(episode.judges).to include(judge) 
    end 
  end
end  

  describe '#rounds_limit' do 
    context "has too many rounds" do 
      
      let(:episode) {Episode.new(name: "Tropicalia")}
        before do 
          episode.save 
        end 
      
      it "only has three rounds" do 
        appetizer = Round.create(category: "dinner")
        entree = Round.create(category: "entree")
        dessert = Round.create(category: "dessert")
        snack = Round.create(category: "snack")

        episode.rounds.push(appetizer, entree, dessert, snack)
        expect(episode).to have(1).errors_on(:rounds)
      end
    end 
  end 

    describe '#chef_limit' do 
      context "has too many chefs" do

      let(:episode) {Episode.new(name: "Tropicalia")}
       
        before do 
          episode.save 
        end 
      
        it "only has four chefs" do 
          chef1 = Chef.create(name: "Bob")
          chef2 = Chef.create(name: "John")
          chef3 = Chef.create(name: "Sue")
          chef4 = Chef.create(name: "Peggy")
          chef5 = Chef.create(name: "Joe")

          episode.chefs.push(chef1, chef2, chef3, chef4, chef5)
          expect(episode).to have(1).errors_on(:chefs)
        end
      end  

     describe '#judge_limit' do 
      context "has too many judges" do

      let(:episode) {Episode.new(name: "Tropicalia")}
       
        before do 
          episode.save 
        end 
      
        it "only has four chefs" do 
          judge1 = Judge.create(name: "Bob")
          judge2 = Judge.create(name: "John")
          judge3 = Judge.create(name: "Sue")
          judge4 = Judge.create(name: "Peggy")

          episode.judges.push(judge1, judge2, judge3, judge4)
          expect(episode).to have(1).errors_on(:judges)
        end
      end
    end  
end