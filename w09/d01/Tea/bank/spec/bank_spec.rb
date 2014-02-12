require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) {Bank.new("bofa")}

  describe '::new' do
    it 'creates a new bank' do
      expect(bank).to_not eq nil
    end

    it 'has a name' do
      expect(bank.name).to eq("bofa")
    end
  end

  describe '#new_account' do
    it 'creates a new account' do
      bank.new_account(200)
      expect(bank.accounts.count).to eq(1)
    end

    it 'expects opening deposit of $200' do
      expect(bank.new_account(100)).to eq("too little money")
    end
  end

  context "user has 200 in account" do
    before do
      bank.new_account(200)
    end
    
    describe '#withdraw' do        
      it 'takes money from user account' do
        bank.withdraw(2)
        expect(bank.accounts.first[:amount]).to eq(198)
      end

      it 'yells at user for overdrawing' do
        bank.withdraw(300)
        expect(bank.accounts.first[:amount]).to eq(170)
      end      
    end

    describe '#deposit' do
      it 'deposits money' do
        bank.deposit(2)
        expect(bank.accounts.first[:amount]).to eq(202)
      end
    end

    # describe '#check_balance' do
    #   it 'can check balance' do
    #     bank.check_balance
    #   end
    # end

  end
end