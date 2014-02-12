require 'pry'

def save_as( fname, contents )
  if File.exists? fname
    print "File exists, overwrite? [y/n] "
    return if gets.chomp != "y"
  end

  f = File.open fname, "w+"
  f.write contents
  f.close
end

f = File.new "seuss.txt", "r"
text = f.read

sam_reg = /(Sam)\s|(Sam)\W\s/ #Sam[^-]
match = text.scan(sam_reg)
puts "Sam is not referred to as 'Sam-I-Am' " + match.count.to_s + " times.\n"


sammy_text = text.gsub(/(Sam-I-Am)/i, "Sammy Jam")
puts sammy_text

places_reg = /(Not\W+in a ([a-z]+))|(Not\W+on a ([a-z]+))|(Not\W+with a ([a-z]+))|(not\W+in the ([a-z]+))/i  
match = text.scan(places_reg)
places_animals = []

match.each do |m|
  m.each_index do |i|
    if i%2 != 0
      places_animals << m[i]
    end
  end
end

the_bigot = places_animals.compact!.uniq!
puts "\nSam refused to eat with/on/in the following:\n" + the_bigot.join("\n")

cap_not_reg = /Not\s([a-z])/
yes_text = text
match = text.scan(cap_not_reg)

match.each do |char|
   # binding.pry
  cap_text = text.gsub(cap_not_reg, char[0].capitalize)
  yes_text = cap_text.gsub(/(not\s)|(not\w)/, "")
end

save_as("agreeable_seuss.txt", yes_text)

pj_text = text.gsub(/(Sam)/, "PJ")
pj_text = pj_text.gsub(/(-I-Am)/i, "-I-Say")
pj_text = pj_text.gsub(/(green eggs and ham)/, "curds and whey")

save_as("pj_seuss.txt", pj_text)

# binding.pry
f.close
