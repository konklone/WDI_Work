require 'spec_helper'

describe Dish do
  let(:dish) { Dish.new(name: "polenta", chef_id: 2, round_id: 2) }
  describe '#new' do
    it 'is valid with name, chef_id, and round_id' do
      expect(dish).to be_valid
    end

    it 'is invalid without name' do
      dish.name = nil
      expect(dish).to have(1).errors_on(:name)
    end

    it 'is invalid without chef_id' do
      dish.chef_id = nil
      expect(dish).to have(1).errors_on(:chef_id)
    end

    it 'is invalid without round_id' do
      dish.round_id = nil
      expect(dish).to have(1).errors_on(:round_id)
    end
  end
end