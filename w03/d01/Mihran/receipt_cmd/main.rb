require_relative "menu"
require "pry"
require "pg"

PROMPT = "Save (N)ew receipt, (L)ist receipts, (Q)uit"
ACCEPTABLE_INPUT = [:n, :l, :q] # acceptable results for the menu
FILENAME = "receipts"


# welcome message
puts mp( "", "*" )
puts mp( "WELCOME TO THE RECEIPT APP", "*" )
puts "\n"

# main menu loop
while true
  # prompt user for type of action
  user_choice = menu_prompt( ACCEPTABLE_INPUT, PROMPT )

  # deal with user action
  case user_choice
  when :n
    # either declare or reset new receipt instance as an empty hash
    new_receipt = {}

    new_receipt[:store] = menu_gets( "Enter store name: ", "String" ) || "Store"
    new_receipt[:item] = menu_gets( "Enter item name: ", "String" ) || "Item"
    new_receipt[:num] = menu_gets( "Enter number of items: ", "Integer" ) || 1
    new_receipt[:price] = menu_gets( "Enter price: ", "Money" ) || 10.00
    new_receipt[:date] = menu_gets( "Enter date (blank if today): ", "String" )

    # too much effort to style dates right now... :)
    new_receipt[:date] = "December 24 1989"

    # open file for writing ##########################################

    db_conn = PG.connect(dbname: "receipts_db")

    query_str = "INSERT INTO receipts "
    query_str += "(store, item, number_of_item, price, buy_date) VALUES"
    query_str += " ('#{new_receipt[:store]}', '#{new_receipt[:item]}', #{new_receipt[:num]}, #{new_receipt[:price]}, '#{new_receipt[:date]}'); "

    db_conn.exec ( query_str )

    db_conn.close


    ###################################################################

    puts "\n" + mp( "New receipt written!", "*" )

  when :l
    # either declare or reset old receipt instance as an empty hash

    puts mp( "Receipts List", " " )
    puts mp( "", "*" ) + "\n"

    # open file for reading ##########################################
    
    db_conn = PG.connect( dbname: FILENAME + "_db" )

    results = db_conn.exec( "SELECT * FROM receipts;")

# binding.pry

    results.each do |line|
      output_str = "Number #{line["id"]}: #{line["number_of_item"]} "
      output_str += "#{line["item"]}, from #{line["store"]} at "
      output_str += "$#{line["price"]} each. (#{line["buy_date"]})"
      puts output_str
    end

    db_conn.close



        ###################################################################

    puts mp( "", "*" ) + "\n\n"
  when :q
    break #exit loop
  end

end

# goodbye message
puts "\n"
puts mp( "GOODBYE!", "*" )
puts mp( "", "*" )