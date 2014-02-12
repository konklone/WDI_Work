require 'spec_helper'

describe Rating do
  let!(:judge) { Judge.create(name: "Judge 1") } 
  let!(:round) { Round.create(name: "Round 1", episode_id: 1) }
  let!(:chef) { Chef.create(name: "Edward") }
  let!(:dish) { Dish.create(name: "Super Yummy", chef: chef, round: round) }

  subject(:rating) { Rating.new(judge: judge, dish: dish, score: 3) }

  context "a rating is associated with a judge and dish" do
    it "is valid" do
      expect(rating).to be_valid
    end
  end

  context "a rating is associated with a judge and not a dish" do
    it "is not valid" do
      rating.judge_id = nil
      expect(rating).to have(1).errors_on(:judge_id)
    end
  end

  context "a rating is associated with a dish but not a judge" do
    it "is not valid" do
      rating.dish_id = nil
      expect(rating).to have(1).errors_on(:dish_id)
    end
  end

  context "a does not have a score" do
    it "is not valid" do
      rating.score = nil
      # binding.pry
      expect(rating).to have(1).errors_on(:score)
    end
  end

  context "a score is between 1 and 5" do
    it "is valid" do
      expect(rating.score).to be < 5  
      expect(rating.score).to be > 1
    end
  end

  context "a score is less than 1" do
    it "is not valid" do
      rating.score = 0
      expect(rating).to have(1).errors_on(:score)
    end
  end

  context "a score is less than 1" do
    it "is not valid" do
      rating.score = 0
      expect(rating).to have(1).errors_on(:score)
    end
  end

  context "a score is greater than 5" do
    it "is not valid" do
      rating.score = 6
      expect(rating).to have(1).errors_on(:score)
    end
  end

  describe "#rating_uniqueness" do
    context "judge can't rate the same dish twice" do
      before do
        Rating.create(judge: judge, dish: dish, score: 2)
        #binding.pry
      end
      it "is invalid" do
        expect(rating).to have(1).errors_on(:dish_id)
      end
    end
  end




end