require 'pry'

n = ['ts', '34th', '28th-n', '23rd-n', 'us']
# l = ['8th', '6th', 'us', '3rd', '1st']
# s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
mta = {}
mta[:n] = n
# mta[:l] = l
# mta[:s] = s

puts "Only the n line is running, where would you like to board? #{n}"
board = gets.chomp

puts "What stop would you like to get off at? #{n}"
disembark = gets.chomp

puts "You boarded at #{board} exited at #{disembark} and traveled stops"

binding.pry