require 'spec_helper'

describe Dish do
  let(:dish1){Dish.new}

  it "has a name" do
    dish1.name = "Pasta"
    expect(dish1).to be_valid
  end

  it "is not valid if it doesn't have a name" do
    dish1.name = nil
    expect(dish1).to have(1).errors_on(:name)
  end



end
