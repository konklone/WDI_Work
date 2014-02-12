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
    fs = File.new( FILENAME + ".csv", "a+" )

    db_conn = PG.connect( dbname: FILENAME + "_db")

    query_str = "INSERT INTO receipts "
    query_str += "(store, item, number_of_item, price, buy_date) VALUES"
    query_str += "('#{new_receipt[:store]}', '#{new_receipt[:item]}', #{new_receipt[:num]}, #{new_receipt[:price]}, '#{new_receipt[:date]}');"
    db_conn.exec ( "INSERT INTO")

    db_conn.exec (query_str)

    line_count = fs.count + 1 # increment past last line for unique id
    fs.puts "#{line_count}:" + new_receipt.values.to_a.join( "," )

    db_conn.close

    fs.close
    ###################################################################

    puts "\n" + mp( "New receipt written!", "*" )
    puts mp( "You now have #{line_count} receipts stored.", "*" ) + "\n\n"

  when :l
    # either declare or reset old receipt instance as an empty hash
    old_receipt = {}

    puts mp( "Receipts List", " " )
    puts mp( "", "*" ) + "\n"

    # open file for reading ##########################################
    fs = File.new( FILENAME + ".csv", "r" )
    db_conn = PG.connect( dbname: FILENAME + "_db")

    results = db_conn.exec ("SELECT * FROM   receipts;")

    # binding.pry

    results.each do |row|
      # line_count, line = line.chomp.split(":")
      # old_receipt[:store], old_receipt[:item], old_receipt[:num], old_receipt[:price], old_receipt[:date] = line.split(",")
      output_str = "Number #{row['id']}: #{row['number_of_item']} "
      output_str += "#{row['item']}, from #{row['store']} at "
      output_str += "$#{row['price']} each. (#{row['buy_date']})"
      puts output_str
    end

    fs.close
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