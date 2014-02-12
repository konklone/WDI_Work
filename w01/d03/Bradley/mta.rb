def chob
  gets.chomp.downcase
end

def transit

#initial hash with stops arrays as values

  n = ['ts', '34th', '28th-n', '23rd-n', 'us']
  l = ['8th', '6th', 'us', '3rd', '1st']
  s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
  o = ['59th', '50th', 'ts', '34th', '28th']

  mta = {}
  mta[:n] = n
  mta[:l] = l
  mta[:s] = s
  mta[:o] = o

  #prompts user for line and stop they're getting on

  puts "what line would you like to get on? n, l, s, or o?"
  line_on = chob.to_sym
  puts "what stop would like to get on?"
  puts mta[line_on]
  on = chob

  #handles case where line or stops provided don't exist

  unless mta.keys.include?(line_on) && mta[line_on].include?(on)
    puts "not valid responses! try again."
    transit
  end

  #prompts user for line and stop they're getting off

  puts "what line would you like to get off? n, l, s, or o?"
  line_off = chob.to_sym
  puts "what stop would like to get off?"
  puts mta[line_off]
  off = chob

  #handles case where line or stops provided don't exist
  
  unless mta.keys.include?(line_off) && mta[line_off].include?(off)
    puts "not valid responses! try again."
    transit
  end

  #identifies indices of stops within respective arrays, finds distance between

  stop_on = mta[line_on].index(on)
  stop_off = mta[line_off].index(off)
  stops = (stop_on - stop_off).abs

  #this conditional handles the complex case where user takes two different lines

  unless line_on == line_off
    intersection = (mta[line_on] & mta[line_off]).first
    transfer = mta[line_on].index(intersection)
    stops += (transfer - stop_off).abs
  end

  #outputs the number of stops

  puts " "
  puts "Your trip has #{stops} stops!"

end

transit
  




