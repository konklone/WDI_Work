class Bank

  def initialize(name)
    @name = name
    @accounts = []
    @fees = []
  end

  def name
    @name
  end

  def accounts
    @accounts
  end

  def newaccount(deposit)
    unless deposit<200
      newaccount = [deposit]
      @accounts.push(newaccount)
    end 
  end
  
  def balance
    accounts[0][0]
  end

  def fees
    @fees
  end

  def withdraw(amount)
    if amount<=accounts[0][0]
      accounts[0][0] -= amount
    else
      accounts[0][0] -= 30
      @fees.push(30)
    end
  end

  def deposit(amount)
    accounts[0][0] += amount  
  end

  def forgive
    @fees.each do |fee|
      accounts[0][0] += fee
    @fees = []
    end
  end

end