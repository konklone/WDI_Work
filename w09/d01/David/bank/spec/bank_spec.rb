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
  let(:bank) { Bank.new("Douche Bank") }

  describe "::new" do
    it "creates a new bank" do
      expect(bank).to_not eq nil
    end

    it "hase a name" do
      expect(bank.name).to eq("Douche Bank")
    end

    it "has no accounts" do 
      expect(bank.accounts.count).to eq(0)
    end
  end

  describe "#create_account" do
    before do
      bank.create_account("David")
    end
    context "Deposit at least 200"
      it "creates a new account for a user" do
        expect(bank.accounts.count).to eq(1)
      end
    end
  end

  describe "#opening_deposit" do
    context "Deposit at least 200" do
      before do
        bank.opening_deposit("David", 200)
      end
      it "user makes an opening deposit greater than 200" do
        expect(bank.accounts["David"][:balance]).to eq(200)
      end
    end

    context "Deposit less than 200" do
      before do
        bank.opening_deposit("David", 199)
      end
      it "a user cannot deposit less than $200" do
        expect(bank.accounts["David"][:balance]).to eq(0)
      end
    end
  end

  describe "#withdrawal" do
    before do
      bank.create_account("David")
      bank.opening_deposit("David", 200)
    end
    it "makes a withdrawal" do
      bank.withdrawal("David", 100)
      expect(bank.accounts["David"][:balance]).to eq(100)
    end

    it "withdraws more than its balance and accesses $30 fee" do
      bank.withdrawal("David", 201)
      expect(bank.accounts["David"][:balance]).to eq(200-30)
    end
  end


  describe "#deposit" do
    before do
      bank.create_account("David")
      bank.opening_deposit("David", 200)
    end
    it "makes a deposit and updates balance" do
      bank.deposit("David", 400)
      expect(bank.accounts["David"][:balance]).to eq(600)
    end
  end

  # describe "#get_balance" do
  #   before do
  #     bank.create_account("David")
  #     bank.opening_deposit("David", 200)
  #     bank.deposit("David", 400)
  #   end
  #   it "user can view their balance" do
  #     bank.get_balance("David")
  #     expect(bank.accounts["David"][:balance]).to eq(600)
  #   end
  # end

  # describe "#forgive_fees" do
  #   before do
  #     bank.create_account("David")
  #     bank.opening_deposit("David", 200)
  #   end
  #   it "the bank forgives fees for a user" do
  #     bank.forgive_fees("David", 30)
  #     expect(bank.accounts["David"][:balance]).to eq(230)
  #   end
  # end


end