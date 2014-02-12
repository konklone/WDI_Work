class Bank
  def initialize(name)
    @name = name
    @account = false
    @account_balance = 0
  end

   def name
    @name
   end

  def open_account(amount)
    if amount >= 200
      @account = true
      @account_balance += amount
    
    else
      @account = false
    end

  end

  def check_balance
    @account_balance
  end

  def deposit(amount)
    @account_balance += amount
  end

  def withdraw(amount)

     if amount <= @account_balance
       @account_balance -= amount
     else
      false
     end
  end

end