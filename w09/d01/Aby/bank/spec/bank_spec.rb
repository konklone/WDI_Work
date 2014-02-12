#Bank Rspec

#Bank has a name
#user has a name 
#User can create a new account at a bank
#user must provide an opening deposit of at least $200
#User can make a withdrawal
#if user overdraws then reject the withdrawal and asses the account a $30 overdraft fee
#User can make a deposit
#User can inspect his/her balance
#Bank can forgive fees for a given user


require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("Apple Bank") }

  describe '::new' do

    it 'has a name' do
      expect(bank.name).to_not eq nil
    end

  end

  describe '#account' do
    it "finds current balance" do
      expect(bank.account).to eq(0)
    end
  end


end