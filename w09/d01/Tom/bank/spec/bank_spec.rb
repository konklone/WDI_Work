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
  let(:bank) { Bank.new("First Bank") }

  it "has a name" do
    expect(bank.name).to_not eq nil
  end

  it "has accounts" do
    expect(bank.account).to >= 200
  end
end

describe '#Users' do
  it "has a name" do
    expect(user.name).to_not eq nil
  end

  it "has accounts" do
    expect(user.account).to_not eq 0
  end
end


# describe bank
#   has name
#   has accounts
#   can reject withdrawels
#   can charge fees
#   can forgive fees

# describe user
#   has name
#   can open accounts
#     account must be at least 200
#   can make withdrawels
#   can make deposits
#   can get balances

# describe account
#  has initial deposit of 200




