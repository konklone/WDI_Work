require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("BofA") }

  describe '::new' do
    it "creates a new bank" do
      expect(bank).to_not eq nil
    end

    it "has a name" do
      expect(bank.name).to eq("BofA")
    end
  end

  describe '#create_account' do
    it "does something" do
      expect(bank.create_account("Davis", 201)).to_not eq nil
    end

    it "creates a new account" do
      bank.create_account("Davis", 201)
      expect(bank.accounts.count).to_not eq(0)
    end

    it "stores account info" do
      bank.create_account("Davis", 201)
      expect(bank.accounts["Davis"].name).to eq("Davis")
    end
  end

  describe '#check_balance' do
    it "retrieves balance info" do
      bank.create_account("Davis", 201)
      expect(bank.check_balance("Davis")).to eq(201)
    end
  end

  describe '#withdrawal' do
    it "makes a withdrawal" do
      bank.create_account("Davis", 201)
      expect(bank.withdrawal("Davis", 10)).to eq(10)
    end

    it "decrements balance" do
      bank.create_account("Davis", 201)
      bank.withdrawal("Davis", 10)
      expect(bank.check_balance("Davis")).to eq(191)
    end
  end

  describe '#deposit' do
    it "makes a deposit" do
      bank.create_account("Davis", 201)
      expect(bank.deposit("Davis", 10)).to eq(211)
    end
  end

  describe '#forgive_fees' do
    it "drops fees for given user" do
      bank.create_account("Davis", 201)
      bank.withdrawal("Davis", 220)
      bank.forgive_fees("Davis")
      expect(bank.accounts["Davis"].overdraft).to eq(0)
    end
  end
end

describe Account do
  let(:account) { Account.new("Davis", 201) }

  describe "::new" do
    it "creates a new account" do
      expect(account).to_not eq nil
    end

    it "stores a account holder's name" do
      expect(account.name).to eq("Davis")
    end
  end

  describe '#make_withdrawal' do
    it "withraws money" do
      account.make_withdrawal(10)
      expect(account.balance).to eq(191)
    end

    it "returns money withdrawn" do
      expect(account.make_withdrawal(10)).to eq(10)
    end

    it "keeps track of overdraft" do
      expect(account.overdraft).to_not eq nil
    end

    it "rejects an overdraw" do
      expect(account.make_withdrawal(211)).to eq("Overdraw!")
    end

    it "charges overdraft fees" do
      account.make_withdrawal(211)
      expect(account.overdraft).to eq(30)
    end
  end

  describe '#make_deposit' do
    it "makes a deposit" do
      account.make_deposit(10)
      expect(account.balance).to eq(211)
    end
  end

end