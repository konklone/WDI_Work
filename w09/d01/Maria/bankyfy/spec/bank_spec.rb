require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) {Bank.new("Banksy")}

  describe '::new' do
    it 'creates a new bank' do
      expect(bank).to_not eq nil
    end
    it 'has a name' do
    expect(bank.name).to eq("Banksy")
  end
end

describe '#create_account' do
  it "creates a savings acct in bank" do
    bank.create_account("Maria Theuser", 200)
    expect(bank.users.count).to eq(1)
  end
end

describe '#balance' do
  it "allows users to see their balance" do
    expect(bank.balance).to be_true
  end
end

describe '#withdrawal' do
  it "will take money out" do
    bank.withdrawal(amtW)
    expect(bank.withdrawal).to
  end
  end
end
