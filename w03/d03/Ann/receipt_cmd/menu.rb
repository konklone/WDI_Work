########################
# Define a method that will help us "pretty print" our
# menu by spacing each line correctly
########################

MENU_WIDTH = 65

def menu_print( input_str, spacing_char )
  if input_str.empty?
    return (spacing_char * MENU_WIDTH)
  elsif input_str.length >= MENU_WIDTH
    return (input_str)
  else
    input_str = " #{input_str} " # wrap input in spaces
    spacing_width = MENU_WIDTH - input_str.length

    # parrallel assignment, look it up!
    front, back = (spacing_width / 2), (spacing_width / 2)

    # make sure that the final product is exactly aligned
    if spacing_width.odd?
      back += 1
    end

  end

  # using implicit return to send back the concatenated string
  (spacing_char * front) + input_str + (spacing_char * back)
end

# allow programs to use the term mp instead of menu_print
alias mp menu_print

########################
# Define a method that will display a menu prompt and
# receive input from the user...
########################

def menu_prompt( input_list, prompt_str )
  # go in to an infinite loop
  while true
    puts menu_print( "Please choose one option:", " " )
    puts menu_print( prompt_str, " ")
    # note: even tho the name is the same, this is separate from the
    # var user_response in the procedure outside this method!!! :)
    user_response = gets.chomp.downcase.to_sym

    # check user_response against acceptable input list
    if input_list.include?( user_response )
      return user_response # explicit return breaks the loop
    end

    puts "\n" + menu_print( "Sorry, that is not acceptable input...", "*" ) + "\n"
  end
end

########################
# Define a method that will ensure we get a specific type of
# input from the user...
########################

def menu_gets( prompt_str, input_type )
  # go in to an infinite loop
  while true
    print( prompt_str )
    input_str = gets.chomp

    # allow caller to set defaults
    return nil if input_str == ""

    case input_type
    when "String"
      return input_str
    when "Integer"
      output = input_str.to_i
      if output != 0
        return output
      else
        puts "\nSorry, you must enter a non-zero integer...\n"
      end
    when "Float"
      output = input_str.to_f
      if output != 0
        return output
      else
        puts "\nSorry, you must enter a non-zero float...\n"
      end
    when "Money"
      output = input_str.to_f
      if output != 0
        return output.round(2)
      else
        puts "\nSorry, you must enter a non-zero float...\n"
      end
    end
  end
end

