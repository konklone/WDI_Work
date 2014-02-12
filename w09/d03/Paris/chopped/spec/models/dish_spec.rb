require 'spec_helper'

describe Dish do
  let!(:Dish) { Dish.new(name: "Soup Du Jour", type: "appetizer", chef_id: 1) }

  describe '::new' do
    it 'creates a new dish' do
      expect(dish).to_not eq nil
    end

    it 'has a name' do
      expect(dish.name).to eq("Soup Du Jour")
    end
  end

end