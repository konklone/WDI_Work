require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("Blah") }

  describe '::new' do
    it 'creates a new bank' do
      expect(bank).to_not eq nil
    end

    it 'has a name' do 
      expect(bank.name).to eq("Blah")
    end

    it 'has no accounts' do
      expect(bank.accounts.count).to eq(0)
    end
  end

  describe '#create_account' do
    it 'creates a new account' do
      bank.create_account("new account", 200)
      expect(bank.accounts.count).to eq(1)
    end

    it 'must have an opening deposit of 200 dollars' do
      bank.create_account("new account", 200)
      expect(bank.accounts.count).to eq(1)
    end
  end
end