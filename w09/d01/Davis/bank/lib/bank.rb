class Bank
  attr_reader :name

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def create_account(name, opening_deposit)
    opening_deposit >= 200 ? @accounts[name] = Account.new(name, opening_deposit) : "Must be at least $200"
  end

  def accounts
    @accounts
  end

  def withdrawal(name, amount)
    @accounts[name].make_withdrawal(amount)
  end

  def deposit(name, amount)
    @accounts[name].make_deposit(amount)
  end

  def check_balance(name)
    @accounts[name].balance
  end

  def forgive_fees(name)
    @accounts[name].overdraft = 0
  end
end

class Account
  attr_reader :name, :balance
  attr_accessor :overdraft

  def initialize(name, opening_deposit)
    @name = name
    @balance = opening_deposit
    @overdraft = 0
  end

  def make_withdrawal(amount)
    if amount <= @balance
      @balance -= amount
      amount
    else
      @overdraft += 30
      "Overdraw!"
    end
  end

  def make_deposit(amount)
    @balance += amount
  end
end