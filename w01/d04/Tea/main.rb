require_relative 'hello'
require_relative 'questions/how_are_you'
require_relative 'goodbye'


puts "What's your name?"
name = gets.chomp

hello(name)
how_are_you(name)
goodbye(name)