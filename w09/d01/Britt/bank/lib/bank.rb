class Account
  attr_reader :name
  attr_accessor :fees

  def initialize balance, name
    if balance < 200
      raise "The minimum deposit required to open an account is $200."
    else
      @balance = balance
      @name = name
      @fees = 0
    end
  end

  def balance
    @balance - @fees
  end

  def withdraw amount
    if amount > @balance
      @fees += 30
    else
      @balance -= amount
    end
  end

  def deposit amount
    @balance += amount
  end
end

class Bank
  attr_reader :name

  def initialize name
    @name = name
    @accounts = []
  end

  def create_account balance, name
    acct = Account.new balance, name
    @accounts << acct
    acct
  end

  def accounts
    @accounts
  end

  def forgive_fees account_name
    acct = @accounts.find {|account| account.name == account_name}
    acct.fees = 0
  end
end