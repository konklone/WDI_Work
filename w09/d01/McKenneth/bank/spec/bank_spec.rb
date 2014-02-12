require 'spec_helper'
require_relative '../lib/bank'

describe "Bank" do
  
  let(:bank) {Bank.new("Bank of Despair")}
  
  
  describe "::new" do
    it "makes a bank" do
      expect(bank).to_not eq(nil)
    end
    it "has a name" do
      expect(bank.name).to eq("Bank of Despair")
    end
    it "has accounts" do 
      expect(bank.accounts).to_not eq(nil)
    end
  end
 
  before do
        bank.create_account(200)
    end
  
  describe "#create_account" do
    it "makes a new account" do
      expect(bank.accounts.count).to be > (0)
    end
    it "starts with a minimum balance" do
      expect(bank.accounts[0]).to be >= (200)
    end
  end

  describe "#withdraw" do
    before do
      bank.withdraw(1)
    end
    it "can decrease the balance of the account" do
      expect(bank.accounts[0]).to eq(199)
    end
  end
end