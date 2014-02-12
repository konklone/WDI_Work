require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  subject(:bank) { Bank.new("Central Savings") }

  describe '::new' do
    it 'has a name' do
      expect(bank.name).to eq("Central Savings")
    end
  end

  describe '#open_account' do
    context "user has more than the requisite starting balance" do
      before do
        bank.open_account("Jeff", 200)
      end

      it "opens the account" do
        expect(bank.customer("Jeff")).not_to eq(nil)
      end
    end

    context "user doesn't have enough money" do
      before do
        bank.open_account("Jeff", 1)
      end

      it "doesn't open the account" do
        expect(bank.customer("Jeff")).to eq(nil)
      end
    end
  end

  describe "#balance" do
    before do
      bank.open_account("Jeff", 250)
    end

    context "actual customer" do
      it "is 250" do
        expect(bank.balance("Jeff")).to eq(250)
      end
    end

    context "non-existant customer" do
      it "is nill" do
        expect(bank.balance("Shmee Johnson")).to eq(nil)
      end
    end
  end

  describe "#deposit" do
    before do
      bank.open_account("Jeff", 250)
      bank.open_account("Joe", 350)

      bank.deposit("Jeff", 300)
      bank.deposit("Joe", 400)
    end


    it "adds to the balance" do
      expect(bank.balance("Jeff")).to eq(550)
      expect(bank.balance("Joe")).to eq(750)
    end

    context "non-existant user" do
      it "doesn't throw an error" do
        expect { bank.deposit("Shmee Johnson", 500) }.not_to raise_error
      end
    end
  end

  describe '#withdraw' do
    before do
      bank.open_account("Jeff", 250)
    end

    context "sufficient funds" do
      it "withdraws the money" do
        expect(bank.withdraw("Jeff", 200)).to eq(200)
      end

      it "draws down the account balance" do
        bank.withdraw("Jeff", 200)
        expect(bank.balance("Jeff")).to eq(50)
      end
    end
  end
end