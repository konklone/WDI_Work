require 'user'

class Bank
   def initialize(name)
      @name = name
      @users = []
   end

   def name
      @name
   end

   def new_user(name)
      @users.push(User.new(name))
   end

   def users
      @users
   end

end