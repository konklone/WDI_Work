require 'spec_helper'
require_relative '../lib/gol'


describe Cell do 
  let (:cell) {Cell.new}
  describe '::new' do
    it "starts alive" do
      expect(cell.life_state).to be_true  
    end 
  end

  context "death" do 
    it "can die" do
      cell.die
      expect(cell.life_state).to be_false
    end

    describe '#find_neighbors' do 
      it "dies of underpopulation" do
        cell.find_neighbors 
        expect(cell.life_state).to be_false
      end 

      context 'more than 3 neighbors' do
        before do
          cell.neighbors(4) 
        end

        it "dies of overpopulation" do 
          cell.find_neighbors
          expect(cell.life_state).to be_false 
        end
      end
    end
  end
  context "cell is reborn" do
    before do
      cell.die
    end
    describe '#resurrect' do
      it "comes back to life if it is dead and has exactly 3 neighbors" do
        cell.neighbors(3)
        cell.find_neighbors
        expect(cell.life_state).to be_true
      end
      it "doesn't come back to life if it has 2 neighbors" do
        cell.neighbors(2)
        cell.find_neighbors
        expect(cell.life_state).to be_false
      end
    end
  end
end 