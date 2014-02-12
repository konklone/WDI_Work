require 'spec_helper'

describe Score do
  describe '::new' do
    it 'must have a rating to exist' do
      score = Score.create(score: nil, dish_id: 2, judge_id: 2)
      expect(score).to_not be_persisted
    end

    it 'is saved if all the attributes are present' do
      score = Score.create(score: 5, dish_id: 2, judge_id: 2)
      expect(score).to be_persisted
    end
  end

end