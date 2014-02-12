require 'spec_helper'

describe Round do 
  context "the round exists" do
    let(:round) do
      Round.new(category: "Italian Cuisine", winner: "Pasta Carbonara", tie: false)
    end

    it 'is valid' do
      expect(round).to be_valid
    end
  end

  context "the round does not exist" do
    let(:round) do
      Round.new(category: nil, winner: nil, tie: false)
    end

    it 'is invalid' do
      expect(round).to have(1).errors_on(:category)
    end
  end

  context "three rounds maximum" do
    
  end
end