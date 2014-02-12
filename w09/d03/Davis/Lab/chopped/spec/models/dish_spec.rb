require 'spec_helper'

describe Dish do 
  let(:dish) { Dish.new(name: "Foie Gras") }

  describe '::new' do
    it 'has a name' do
      expect(dish.name).to eq("Foie Gras")
    end

    it 'isnt valid without a name' do
      dish.name = nil
      expect(dish).to have(1).errors_on(:name)
    end
  end
end