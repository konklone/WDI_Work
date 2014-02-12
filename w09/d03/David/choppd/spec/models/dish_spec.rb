require 'spec_helper'

describe Dish do
  let!(:round) { Round.create(name: "Round 1", episode_id: 1) }
  let!(:chef) { Chef.create(name: "Edward") }
  let(:dish) { Dish.new(name: "Super Yummy", chef: chef, round: round) }

  context "a dish is associated with a chef and a round" do
    it "is valid" do
      expect(dish).to be_valid
    end
  end

  context "a dish is not associated with a chef" do
    it "is not valid" do
      dish.chef_id = nil
      expect(dish).to have(1).errors_on(:chef_id)
    end
  end

  context "a dish is not associated with a round" do
    it "is not valid" do
      dish.round_id = nil
      expect(dish).to have(1).errors_on(:round_id)
    end
  end

  # context "a dish must have 3 ratings" do
  #   before do
  #     dish.rating_1 = nil
  #   end
  #   it "it is not valid" do
  #     expect(dish).to have(1).errors_on(:rating_1)
  #   end
  # end

  # context "a dish must have 3 ratings" do
  #   before do
  #     dish.rating_2 = nil
  #   end
  #   it "it is not valid" do
  #     expect(dish).to have(1).errors_on(:rating_2)
  #   end
  # end

  # context "a dish must have 3 ratings" do
  #   before do
  #     dish.rating_3 = nil
  #   end
  #   it "it is not valid" do
  #     expect(dish).to have(1).errors_on(:rating_3)
  #   end
  # end

  # describe "#rating_checker" do
  #   context "a rating is a value between 1 and 5" do
  #     it "is valid" do
  #       expect(dish).to be_valid
  #     end
  #   end

  #   context "a rating is greater than 5" do
  #     before do
  #       dish.rating_1 = 6
  #     end
  #     it "is not valid" do
  #       expect(dish).to have(1).errors_on(:rating_1)
  #     end
  #   end
  # end







end