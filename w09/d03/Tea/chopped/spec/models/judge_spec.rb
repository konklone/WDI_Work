require 'spec_helper'

describe Judge do
  let(:judge) { Judge.create(name: "Tea Ho", episode_id: 2) }
  let!(:dish) { Dish.create(name: "polenta", chef_id: 2, round_id: 2) }

  describe '#score' do
    it 'judge can score a dish' do
      judge.score(4, "polenta")
      expect(Score.find_by(dish_id: dish.id)).to_not eq(nil) 
    end

    it 'returns failure if score is not between 1-5' do
      expect{judge.score(8, "polenta")}.to raise_error
    end
  end
end