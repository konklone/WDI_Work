require 'spec_helper'

describe Account do
  let(:account) { Account.new(user_id: 1, balance: 100) }

  describe "#balance" do
    it "is invalid when less than 0" do
      account.balance = -1
      expect(account).to have(1).errors_on(:balance)
    end

    it "is valid when greater than 0" do
      expect(account).to have(0).errors_on(:account)
    end
  end

  describe "#debit" do
    before do
      account.debit(50)
      account.reload
    end

    it "subtracts and saves the account" do
      expect(account.balance).to eq(50)
    end
  end
end