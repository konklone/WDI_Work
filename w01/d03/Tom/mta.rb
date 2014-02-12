n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

    puts "What line would you like to start on?"
    #(this will return symbol of the mta hash down cased)
    puts mta.keys
    start_line = gets.chomp.downcase

    # show the user the stops that are available
    puts "On what stop would you like to board?"
    puts "Please choose: #{mta[:"#{start_line}"].map { |i| "'" + i.to_s + "'" }.join(",")}"


    #store the index of the stop in a variable
    start_station = gets.chomp.downcase
    #start_station_val = "#{mta[:"#{start_line}"].rindex("#{start_station}")}"



    #def journey

    # This will display all of the possible stops.  It should exclude the one that boarded on
    puts "Please choose from the list of possible destinations:"
    puts mta.values
    final_station = gets.chomp.downcase


    # Describe the riders journey
    puts "Your journey will be from #{start_station} on the #{start_line} to #{final_station}"

    #  Should tell the rider how many stops until their destination.
    # It should also tell them if they have to transfer
    puts "On this journey you will make #{} stops"

