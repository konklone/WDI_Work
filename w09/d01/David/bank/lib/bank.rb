class Bank

  def initialize(name)
    @name = name
    @accounts = {}
    @opening_balance = 0
  end

  def name
    @name
  end

  def accounts
    @accounts
  end

  def create_account(name)
    accounts[name] = {balance: @opening_balance}
  end

  def opening_deposit(name, amount)
    if amount >= 200
      accounts[name][:balance] = amount
    end
  end

  def withdrawal(name, amount)
    if amount <= accounts[name][:balance]
      accounts[name][:balance] -= amount
    else
      accounts[name][:balance] -= 30
    end
  end

  def deposit(name, amount)
    accounts[name][:balance] += amount
  end

  def get_balance(name)
    
  end


end