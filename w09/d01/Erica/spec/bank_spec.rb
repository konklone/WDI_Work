require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("Bank of America") }

  describe '::new' do
    it 'creates a new bank' do
      expect(bank).to_not eq nil 
    end
  
    it 'has a name' do
      expect(bank.name).to eq("Bank of America")
    end

    it 'starts with no accounts' do
      expect(bank.accounts.count).to eq(0)
    end
  end

  describe '#create_account' do
    it 'creates a new account' do 
      bank.create_account("Rob", 400)
      expect(bank.accounts.count).to eq(1)
    end

  #   it 'finds the account' do
  #     rob = accounts.find_account("Rob")
  #     expect(rob).to eq({name: "Rob", amount: 400})
  #   end

  #   it 'doesn\'t find non-existing accounts' do
  #     expect(accounts.find_account("Barbara")).to eq(nil)
  #   end

  #   it "stores the account info" do
  #     bank.create_account("Rob", 400)
  #     expect(bank.accounts["Rob"].name.to eq("Rob")
  #     end
  #   end

  #   it 'makes the withdrawal' do
  #   end
  end
end

