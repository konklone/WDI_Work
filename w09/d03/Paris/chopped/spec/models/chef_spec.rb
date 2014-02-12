require 'spec_helper'

describe Chef do
  let!(:chef) { Chef.new(name: "Swedish Chef") }
  # let!(:dish) { Dish.new(name: "Soup Du Jour", type: "appetizer") }

  describe '::new' do
    it 'creates a new chef' do
      expect(chef).to_not eq nil
    end

  it 'has a name' do
    expect(chef.name).to eq("Swedish Chef")
  end
  end

  describe '#make_dish' do

    it "adds a dish that the chef made" do
      chef.make_dish("Soup Du Jour")
      expect(chef.dishes.count).to eq(1)
    end
  end

end