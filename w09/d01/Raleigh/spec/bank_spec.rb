require 'spec_helper'
require_relative '../lib/bank'
require_relative '../lib/user'


describe Bank do
   let(:bank) {bank = Bank.new("Bank of America")}
   before do
      bank.new_user("Bob")
   end

   describe '#name' do
      it 'has a name' do 
        expect(bank.name).to eq("Bank of America")
      end
   end

   describe '#users' do
      it 'can have have a user' do
         expect(bank.users[0]).to be_an_instance_of(User)
      end
   end

end