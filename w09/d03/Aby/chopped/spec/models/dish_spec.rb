require 'spec_helper'

describe Dish do
  let(:dish) { Dish.new(name: "Confit") }

  describe '::new' do
    it 'has a name' do
      expect(dish.name).to eq("Confit")
    end
  end
end