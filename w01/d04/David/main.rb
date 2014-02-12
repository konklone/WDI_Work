#give name or path to file relative to current directory
require_relative 'hello'
require_relative 'goodbye'
require_relative './questions/how_are_you'

puts "What's your name?"
name = gets.chomp

hello(name)
how_are_you(name)
goodbye(name)
