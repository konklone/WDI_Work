require 'spec_helper'

describe Chef do
  let(:chef) { Chef.create(name: "Aruntu", episode_id: 2) }
  let(:dish) { Dish.create(name: "polenta", chef_id: 2, round_id: 2) }
  
  describe '::new' do
    context 'Four chefs are already in the game' do
      before do
        chef1 = Chef.create(name: "Norman", episode_id: 2)
        chef2 = Chef.create(name: "Anita", episode_id: 2)
        chef3 = Chef.create(name: "Lee Cheng", episode_id: 2)
        chef4 = Chef.create(name: "Howard", episode_id: 2)
      end
      it 'does not allow more chefs to join' do
        chef5 = Chef.create(name: "Abernathy", episode_id: 2)
        chef5.save
        expect(chef5).to_not be_persisted
      end

      it 'has four chefs in the kitchen' do
        expect((Chef.all).count).to eq(4)
      end
    end
  end  

  it 'chef can make a dish' do
    chef.cook("chicken", 2)
    expect(Dish.where(name: "chicken").count).to eq(1) 
  end

  it 'expect chef to make a dish with proper arguments' do
    expect{chef.cook("cake")}.to raise_error ArgumentError
  end
end