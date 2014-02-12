#Bank Rspec
# Bank has a name
# User can create a new account at a bank
# user must provide an opening deposit of at least $200
# User can make a withdrawal
# if user overdraws then reject the withdrawal and asses the account a $30 overdraft fee
# User can make a deposit
# User can inspect his/her balance
# Bank can forgive fees for a given user

require 'spec_helper'
require_relative '../lib/bank'

describe Bank do

  let(:bank) { Bank.new("Big Evil Bank")}
  
  describe '::new' do 
    it 'has a name' do
      expect(bank.name).to eq("Big Evil Bank")
    end
  end

  describe '#newaccount' do
    context "Deposit is at least 200" do
      it 'allows user to create an account with 200 dollars' do
        bank.newaccount(200)
        expect(bank.accounts.count).to eq(1)
        expect(bank.accounts[0]).to eq([200])
      end
    end

    context "Deposit is under 200" do
      it 'does not allow a user to create an account with less than 200 dollars' do 
        bank.newaccount(199)
        expect(bank.accounts.count).to eq(0)
      end
    end

  end

  describe '#withdraw' do
    ##instantiate an account with 1000 dollars in it before trying different 'withdraw' contexts
    before do
      bank.newaccount(1000)
    end

    context "withdrawal is below amount in account" do
      it 'allows a user to make a withdrawal' do
        bank.withdraw(1)
        expect(bank.accounts[0][0]).to eq(999)
      end
    end

    context "withdrawal is above amount in account" do
      it 'rejects the withdrawal and charges the user $30' do
        bank.withdraw(1001)
        expect(bank.accounts[0][0]).to eq(970)
        expect(bank.fees[0]).to eq(30)
      end
    end
  end

  describe '#deposit' do
    it 'allows user to make a deposit' do
      bank.newaccount(1000)
      bank.deposit(100)
      expect(bank.accounts[0][0]).to eq(1100)
    end
  end

  describe '#balance' do
    it 'allows user to check balance' do
      bank.newaccount(1000)
      expect(bank.balance).to eq(1000)
    end
  end

  describe '#forgive' do
    it 'adds the total of each fee back into the account' do
      bank.newaccount(1000)
      bank.withdraw(1001)
      bank.forgive
      expect(bank.accounts[0][0]).to eq(1000)
      expect(bank.fees).to eq([])
    end
  end

end