require 'spec_helper'

describe Judge do
  let!(:chef) { Chef.create(name: "Hot Chef") }
  let!(:round) { Round.create(name: "Round 1", episode_id: 1) }
  let!(:dish) { Dish.create(name: "Hot and Spicey", chef: chef, round: round ) }
 
  subject(:judge) { Judge.new(name: "Judge 1") }

  describe "#rate" do
    context "a judge gives a dish a rating" do
      before do
        judge.save
        judge.rate(dish)
      end
      it "has rating" do
        # binding.pry
        expect(dish.ratings).not_to eq([])
      end
    end
  end
  
end