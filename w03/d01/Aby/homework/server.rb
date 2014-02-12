require_relative "menu"
require "pg"
require "pry"     
     
PROMPT = "(A)dd new movie, (L)ist all movies, (Q)uit"
ACCEPTABLE_INPUT = [:a, :l, :q] # acceptable results for the menu
FILENAME = "movies"
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
  when :a
    # either declare or reset new receipt instance as an empty hash
    new_movie = {}
     
    new_movie[:title] = menu_gets( "Enter movie title: ", "String" ) || "Title"
    new_movie [:year] = menu_gets( "Enter year: ", "Integer" ) || 1
    new_movie[:poster] = menu_gets( "Enter poster:", "String" ) || "Poster"
     
        # open file for writing ##########################################
    fs = File.new( FILENAME + ".csv", "a+" )
    db_conn = PG.connect( dbname: FILENAME + "_db" )

    query_str = "INSERT INTO Movies ('title', 'year', 'poster') VALUES " 
    query_str += "('#{new_movie[:title]}', '#{new_movie[:year]}', '#{new_receipt[:poster]}')"

    line_count = fs.count + 1 # increment past last line for unique id
    fs.puts "#{line_count}:" + new_receipt.values.to_a.join( "," )
     
    db_conn.close
    fs.close
        ###################################################################
    
    puts "\n" + mp( "New receipt written!", "*" )
    puts mp( "You now have #{line_count} receipts stored.", "*" ) + "\n\n"
     
    when :l
        # either declare or reset old receipt instance as an empty hash
    row = {}
     
    puts mp( "Movies List", " " )
    puts mp( "", "*" ) + "\n"
     
        # open file for reading ##########################################
    #fs = File.new( FILENAME + ".csv", "r" )
    db_conn = PG.connect( dbname: FILENAME + "_db" )
    results = db_conn.exec( "SELECT * FROM movies;" )


    fs.each do |line|
    line_count, line = line.chomp.split(":")
    row[:title], row[:year], row[:poster]
    output_str = "Number #{line_count}: #{row[:num]} "
    output_str += "#{row[:item]}, from #{row[:store]} at "
    output_str += "$#{row[:price]} each. (#{row[:date]})"
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

