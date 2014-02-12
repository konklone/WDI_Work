require 'pry'
require 'numbers_in_words'
require 'numbers_in_words/duck_punch'

def divide(arg1, arg2)
  begin
    arg1/arg2
  rescue TypeError
    newarg = arg2.to_i
    divide(arg1, newarg)
  rescue ZeroDivisionError
    puts "NONSENSE!"
  rescue NoMethodError
    isNum = /^[\d]+(\.[\d]+){0,1}$/ =~ arg1
    if isNum == 0 
      newarg = arg1.to_i
      divide(newarg, arg2)
    else
      newarg = arg1.in_numbers
      divide(newarg, arg2)
    end  
  end
end


shell


