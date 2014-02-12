# set variables to instance variables
# delete reptition


#define subway line list
$mta = {
	n: ["times square", "34th", "28th", "23rd", "union square", "8th"], 
	l: ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"], 
	s: ["grand central", "33rd", "28th", "23rd", "union square", "astor"]
}

#list of stops available for given line
def available_stops(subway_line)
	$mta[subway_line.to_sym].join(" | ")
end

#check if going downtown/east or uptown/west
#if start position is < end position then downtown
#takes subway line, start position on that line, end posiition on
#that line, returns true if end is farther downtown/east
def going_downtown?(subway_line, start_stop, end_stop)
	#going EAST == going DOWNTOWN
	$mta[subway_line.to_sym].index(start_stop) < $mta[subway_line.to_sym].index(end_stop) ? true : false
end

#count through how many of stops passed by
def trip_counter_regular(subway_line, start_stop, end_stop)
	$mta[subway_line.to_sym].index(end_stop) - $mta[subway_line.to_sym].index(start_stop)
end

#count through after array reversal
def trip_counter_reverse(subway_line, start_stop, end_stop)
	$mta[subway_line.to_sym].reverse.index(end_stop) - $mta[subway_line.to_sym].reverse.index(start_stop)
end

#method checking whether journey transfer involved
def transfer?(line_off, stop_on)
	##subway line include start
	!$mta[line_off.to_sym].include?(stop_on)
end

#procedure
#transfers at 'union square'-------------------

	#def total trip length
		counter = 0

		puts "What LINE would you like to start at? (n) line, (l) line or (s)ix line?"
		start_line = gets.chomp.downcase
		puts available_stops(start_line)

		puts "What STOP would you like to start at?"
		start_stop = gets.chomp

		puts "What LINE would you like to end at? (n) line, (l) line, or (s)ix line?"
		end_line = gets.chomp.downcase
		puts available_stops(end_line)

		puts "What STOP would you like to end at?"
		end_stop = gets.chomp

		#if transfer aka endline.include?(start stop) == false
		if transfer?(end_line, start_stop)
			#intialize variables for usuage inside this scope
			@start_line = start_line
			@start_stop = start_stop
			@end_line = end_line
			@end_stop = end_stop

			#depending on trip type: check begin stop line & end stop line
			puts "transfer"
				#if start at n 
				case start_line
				when 'n'
					puts "starting on n"
					#if going downtown
					if going_downtown?(@start_line, @start_stop, 'union square')
						puts "going downtown"
						counter += trip_counter_regular(@start_line, @start_stop, 'union square')
					#else if going uptown
					else
						puts "going uptown"
						counter += trip_counter_reverse(@start_line, @start_stop, 'union square')
					end

					#if going east
					if going_downtown?(@end_line, 'union square', @end_stop)
						puts "going east"
						counter += trip_counter_regular(@end_line, 'union square', @end_stop)
					#else if going west
					else
						puts "going west"
						counter += trip_counter_reverse(@end_line, 'union square', @end_stop)
					end					

				#else if start at l
				when 'l'
					puts "starting on l"
					#if going east
					if going_downtown?(@start_line, start_stop, 'union square')
						puts "going east"
						counter += trip_counter_regular(@start_line, start_stop, 'union square')
					#else if going west
					else
						puts "going west"
						counter += trip_counter_reverse(@start_line, start_stop, 'union square')
					end

					#if going downtown
					if going_downtown?(@end_line, 'union square', @end_stop)
						puts "going downtown"
						counter += trip_counter_regular(@end_line, 'union square', @end_stop)
					#else if going uptown
					else
						puts "going uptown"
						counter += trip_counter_reverse(@end_line, 'union square', @end_stop)
					end

				#else nothing
				# when 's'
				# 	puts "starting on 6"
				# 	#if going downtown
				# 	if going_downtown?(@start_line, @start_stop, 'union square')
				# 		puts "going downtown"
				# 		counter += trip_counter_regular(@start_line, @start_stop, 'union square')
				# 	#else if going uptown
				# 	else
				# 		puts "going uptown"
				# 		counter += trip_counter_reverse(@start_line, @start_stop, 'union square')
				# 	end

				# 	#if going east
				# 	if going_downtown?(@end_line, 'union square', @end_stop)
				# 		puts "going east"
				# 		counter += trip_counter_regular(@end_line, 'union square', @end_stop)
				# 	#else if going west
				# 	else
				# 		puts "going west"
				# 		counter += trip_counter_reverse(@end_line, 'union square', @end_stop)
				#	end			
				else
					puts "you retard"
				end

		#else if regular trip / should work for 6 line addition
		else
		puts "NOT transfer"
			#if downtown/east
			if going_downtown?(@end_line, @start_stop, @end_stop)
				puts "downtown or east"
				counter += trip_counter_regular(@end_line, @start_stop, @end_stop)
			#else if uptown/west
			else
				puts "uptown or west"
				counter += trip_counter_reverse(@end_line, @start_stop, @end_stop)
			end
		end
		

		puts "Your strip will take #{counter} stops"
	#end
