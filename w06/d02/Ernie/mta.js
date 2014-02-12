alert("Welcome To WDI MTA!")

n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']


mta = {n: n, l: l, s: s}


function displayStops (system,train) {
  
}


ontrain = prompt ("What train do you want to get on? N L or S")

alert ("Which stop? #{display_stops(mta, on_train)}")
on_stop = gets.chomp

# Ask the train and stop the user wants to get off, and store them in variables
puts "What train do you want to get off? #{display_trains(mta)}"
off_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, off_train)}"
off_stop = gets.chomp