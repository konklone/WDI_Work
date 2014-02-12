require_relative "menu"
require "pg"
require "pry"

PROMPT = "Save (N)ew movie, (L)ist movies, (Q)uit"
ACCEPTABLE_INPUT = [:n, :l, :q] # acceptable results for the menu
FILENAME = "receipts"


# welcome message
puts mp( "", "*" )
puts mp( "WELCOME TO THE MOVIE APP", "*" )
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

    # to much effort to style dates right now... :)
    new_receipt[:date] = "December 24 1989"

    # open file for writing ##########################################
    #fs = File.new( FILENAME + ".csv", "a+" )
    db_conn = PG.connect( dbname: FILENAME + "_db" )

    #line_count = fs.count + 1 # increment past last line for unique id
    #fs.puts "#{line_count}:" + new_receipt.values.to_a.join( "," )
    query = "INSERT INTO receipts "
    query += "(store, item, number_of_item, price, buy_date) VALUES"
    query += "("
    query += "'#{new_receipt[:store]}', '#{new_receipt[:item]}',"
    query += "#{new_receipt[:num]}, #{new_receipt[:price]},"
    query += "'#{new_receipt[:date]}'"
    query += ");"
    db_conn.exec( query )

    #fs.close
    db_conn.close
    ###################################################################

    puts "\n" + mp( "New receipt written!", "*" )
    #puts mp( "You now have #{0} receipts stored.", "*" ) + "\n\n"
    puts mp( "", "*" ) + "\n\n"

  when :l
    # either declare or reset old receipt instance as an empty hash
    old_receipt = {}

    puts mp( "Receipts List", " " )
    puts mp( "", "*" ) + "\n"

    # open file for reading ##########################################

    #fs = File.new( FILENAME + ".csv", "r" )
    db_conn = PG.connect( dbname: FILENAME + "_db" )
    result = db_conn.exec( "SELECT * FROM receipts" )

    #fs.each do |line|
    result.each do |row|
      #output_str = "Number #{line_count}: #{old_receipt[:num]} "
      #output_str += "#{old_receipt[:item]}, from #{old_receipt[:store]} at "
      #output_str += "$#{old_receipt[:price]} each. (#{old_receipt[:date]})"

      output_str = "Number #{row['id']}: #{row['number_of_item']} "
      output_str += "#{row['item']}, from #{row['store']} at "
      output_str += "#{row['price']} each. (#{row['buy_date']})"

      puts output_str
    end

    #fs.close
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