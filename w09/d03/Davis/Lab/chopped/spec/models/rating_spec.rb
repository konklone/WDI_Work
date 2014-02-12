require 'spec_helper'

describe Rating do
  let(:rating) { Rating.new(score: 3, judge_id: 1, dish_id: 1) }

  describe '::new' do
    it 'has a score' do 
      expect(rating.score).to eq(3)
    end

    it 'is not valid without a judge id' do

    end

    it 'is not valid without a dish id' do
      
    end
  end
end