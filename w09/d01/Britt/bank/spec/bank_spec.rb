require 'spec_helper'
require_relative '../lib/bank'

describe Account do
  describe '::new' do
    it 'has a name' do
      acct = Account.new(200, "checking")
      expect(acct.name).to eq("checking")
    end

    it 'has a balance' do
      acct = Account.new(200, "checking")
      expect(acct.balance).to eq(200)
    end

    it 'must have an opening deposit of at least $200' do
      expect(Account.new(300, "checking")).not_to raise_error
    end

    it 'raises an error if you attempt to create an account with a balance below $200' do
      expect{ Account.new(100, "checking") }.to raise_error(RuntimeError, "The minimum deposit required to open an account is $200.")
    end
  end

  describe '#withdraw' do
    let(:acct) {acct = Account.new(400, "checking")}

    context 'the withdrawl is less than the balance' do 
      it 'subtracts the amount of the withdrawl from the balance' do
        acct.withdraw(100)
        expect(acct.balance).to eq(300)
      end
    end

    context 'the withdrawl is greater than the balance' do
      it 'rejects the withdrawl and assesses an overdraft fee of $30' do
        acct.withdraw(500)
        expect(acct.fees).to eq(30)
        expect(acct.balance).to eq(370)
      end
    end
  end

  describe '#deposit' do
    let(:acct) {acct = Account.new(400, "checking")}

    it "adds the deposited amount to the user's account balance" do
      acct.deposit(100)
      expect(acct.balance).to eq(500)
    end
  end
end

describe Bank do
  let(:bank) {Bank.new "GA Bank"}

  it 'has a name' do
    expect(bank.name).to eq("GA Bank")
  end

  describe '#create_account' do
    it 'allows users to create a new account' do
      bank.create_account(500, "checking")
      expect(bank.accounts[0]).to be_an_instance_of(Account)
    end
  end

  describe '#forgive_fees' do
    let(:acct) {acct = bank.create_account(500, "checking")}
    before do
      acct.withdraw(600)
    end

    it "resets the user's account fees to 0" do
      bank.forgive_fees("checking")
      expect(acct.fees).to eq(0)
    end
  end
end