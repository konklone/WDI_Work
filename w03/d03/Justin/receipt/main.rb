require_relative "menu"
require "pg"
require "pry"

PROMPT = "Save (N)ew, (L)ist, Parent (S)tats, (U)pdate, (Q)uit"
ACCEPTABLE_INPUT = [:n, :l, :s, :u, :q] # acceptable results for the menu
FILENAME = "receipts"

# This method opens a connection to the current DB and returns a well-formatted
# list of all its rows
#
def list_receipts
  db_conn = PG.connect( dbname: FILENAME + "_db" )
  result = db_conn.exec( "SELECT * FROM receipts" )
  db_conn.close

  output_str = ""

  result.each do |row|
    row['parent'] = "Santa" if row['parent'].nil? # all NULLs are Santa

    output_str += "Number #{row['id']}: #{row['number_of_item']} "
    output_str += "#{row['item']}, from #{row['store']} at "
    output_str += "#{row['price']} each. (Bought by #{row['parent']} on #{row['buy_date']})\n" # newline
  end
  # binding.pry
  output_str # implicit return
end



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
    new_receipt[:parent] = menu_gets( "Enter parent: ", "String" ).downcase.capitalize || ""
    new_receipt[:date] = menu_gets( "Enter date (blank if today): ", "String" )

    # to much effort to style dates right now... :)
    new_receipt[:date] = "December 24 1989"

    # INSERT INTO table () VALUES () #################################
    db_conn = PG.connect( dbname: FILENAME + "_db" )

    query = "INSERT INTO receipts "
    query += "(store, item, number_of_item, price, parent, buy_date) VALUES"
    query += "("
    query += "'#{new_receipt[:store]}', '#{new_receipt[:item]}',"
    query += "#{new_receipt[:num]}, #{new_receipt[:price]},"
    query += "'#{new_receipt[:parent]}', '#{new_receipt[:date]}'"
    query += ");"
    db_conn.exec( query )

    # get number of receipts
    count = db_conn.exec( "SELECT COUNT(*) FROM receipts;" )[0]['count']

    db_conn.close
    ###################################################################

    puts "\n" + mp( "New receipt written!", "*" )
    puts mp( "You now have #{count} receipts stored.", "*" ) + "\n\n"
    puts mp( "", "*" ) + "\n\n"

  when :l
    # either declare or reset old receipt instance as an empty hash
    old_receipt = {}

    puts mp( "Receipts List", " " )
    puts mp( "", "*" ) + "\n"

    # SELECT * FROM table #############################################
    puts list_receipts
    ###################################################################

    puts mp( "", "*" ) + "\n\n"

  when :s
    puts mp( "Parents Stats", " " )
    puts mp( "", "*" ) + "\n"

    # RECEIPTS PER PARENT, AVERAGE COST PER PRESENT, SHOW PRESENTS IN #
    # DESCENDING ORDER, FOR EACH PARENT ###############################

    db_conn = PG.connect( dbname: FILENAME + "_db" )
    result_mom = db_conn.exec( "SELECT * FROM receipts WHERE parent = 'Mom'" )
    result_dad = db_conn.exec( "SELECT * FROM receipts WHERE parent = 'Dad'" )
    total_mom = db_conn.exec( "SELECT SUM(number_of_item) FROM receipts WHERE parent = 'Mom'" )
    total_dad = db_conn.exec( "SELECT SUM(number_of_item) FROM receipts WHERE parent = 'Dad'" )
    avg_mom = db_conn.exec( "SELECT AVG(price) FROM receipts WHERE parent = 'Mom'" )
    avg_dad = db_conn.exec( "SELECT AVG(price) FROM receipts WHERE parent = 'Dad'" )

    # binding.pry

    db_conn.close



    puts "Mom!"
    puts "Number of items #{total_mom[0]["sum"]}"
    puts "Average cost #{avg_mom[0]["avg"]}"
    puts ""
    puts "Dad!"
    puts "Number of items #{total_dad[0]["sum"]}"
    puts "Average cost #{avg_dad[0]["avg"]}"
        
    result_mom.each do |record|
      puts "Item: #{record["item"]}, from: #{record["store"]}, of price: #{record["price"]}"
    end

    ###################################################################

    puts mp( "", "*" ) + "\n\n"

  when :u
    puts mp( "Receipts List", " " )
    puts mp( "", "*" ) + "\n"
    list_receipts
    puts mp( "", "*" ) + "\n\n"

    id = menu_gets( "Enter id of receipt you want to change: ", "Integer")
    column = menu_gets( "Enter receipt attribute (store, item, price, number_of_item, parent): ", "String" )

    # UPDATE SOME RECEIPT BASED ON COLUMN NAME AND ROW ID #############

    print "New value: "
    value = gets.chomp

    db_conn = PG.connect( dbname: FILENAME + "_db" )
    db_conn.exec( "UPDATE receipts SET #{column} = '#{value}' WHERE id = #{id}")
    db_conn.close

    ###################################################################

  when :q
    break #exit loop
  end

end

# goodbye message
puts "\n"
puts mp( "GOODBYE!", "*" )
puts mp( "", "*" )