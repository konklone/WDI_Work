require 'spec_helper'
require_relative '../lib/life'

describe Game do
  let(:game){Game.new}

  describe '::new' do 
    it 'creates a new game' do
      expect(game).to_not eq(nil)
    end

    it 'has a board, which is a Board object!' do
      expect(game.board).to_not eq(nil)
      expect(game.board.class).to eq(Board)
    end
  end  
end

describe Board do
  let(:game){Game.new}

  it 'has a grid' do
    expect(game.board.grid).to_not eq(nil)
  end

  it 'has four rows' do
    expect(game.board.grid.count).to eq(4)
  end

  it 'altogether has sixteen cells' do
    expect(game.board.grid.flatten.count).to eq(16)
  end

end


describe Cell do 
  let(:game){Game.new}

 it "has a value" do
  expect([true, false]).to include(game.board.grid[0][3].value)
 end


end