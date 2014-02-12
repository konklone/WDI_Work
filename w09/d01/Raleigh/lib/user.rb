class User
   def initialize(name)
      @name = name
      @balance = 200
      @fees = 0
   end

   def account
      @balance
   end

   def withdraw(amnt)
      if account < amnt
         @fees = 30
         @balance = account - @fees
         "Insufficient funds: Your balance is now: " + @balance.to_s
      else
         @balance = account - amnt
         "$" + amnt.to_s + " withdrawn: Your balance is now: " + @balance.to_s
      end
   end

   def deposit(amnt)
      account + amnt
   end

   def balance
      "Your balance is: " + @balance.to_s
   end

   def fees
      @fees
   end
end