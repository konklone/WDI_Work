class Bank
 def initialize(name)
  @name = name
  @account = []
  @deposit = 200
  @withdrawal = 0
 end

 def name
  @name
 end

 def account
    []
 end

 def get_balance
  sum = @account.reduce do |sum, deposit|
    sum + deposit
  end
 end

 def deposit
  @deposit
 end

 def make_deposit(deposit)
  @account << @deposit
    sum = @account.reduce do |sum, deposit|
      sum + deposit
    end
 end

 def withdrawal
  @withdrawal
 end

 def make_withdrawal(amount)
    sum = @account.reduce do |sum, deposit|
      sum + deposit
      sum - amount
    end
 end

  def overdrawn(amount)
    sum = @account.reduce do |sum, deposit|
      sum + deposit
      if @withdrawal > sum 
        puts "you've overdrawn on your account!"
        make_withrawal(30)
      else
        make_withrawal(amount)
      end
    end
 end

end