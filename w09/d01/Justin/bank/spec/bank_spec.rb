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
	let(:bank) { Bank.new("JAK Savings and loan")}

	describe '::new' do
		it 'creates a new bank' do
			expect(bank).to_not eq nil
		end

		it 'has a name' do
			expect(bank.name).to eq("JAK Savings and loan")
		end
	end

	describe '#open_account' do
		context "checking account with $200" do
			before do
				bank.open_account("checking", 200)
			end

			it "opens an account in the bank for the user" do
				expect(bank.accounts.count).to eq(1)
			end

			it "account must have at leasts $200" do
				expect(bank.accounts[:checking]).to be >= 200
			end
		end

		it "account must not have less than $200" do
			bank.open_account("checking", 80)
			expect(bank.accounts.count).to eq(0)
		end
	end

	describe '#withdrawal' do
		it "User can withdrawal mooonies" do
			bank.open_account("checking", 200)
			bank.withdrawal("checking", 50)
			expect(bank.accounts[:checking]).to eq(150)
		end
	end
end