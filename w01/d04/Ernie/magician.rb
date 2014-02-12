person_1 = {:name "David Copperfield", :location "Metuchen"}
person_2 = {:name "Syphilis Rivendell" , :location "Brooklyn"}
dog ={:dog "Sparky"  , :location "Manhattan"}

def say_persons_name (options)
      puts "Oh, person[:name] is from #{person[:location]}"#options.values
end

def say_dogs_name(options)
  puts "WOOF!" 
  puts options.values 
  puts "WOOF!"
end

def do_magic (options)
  puts "#{person[:name]} is doing magic"
end

say_persons_name(person_1)
say_persons_name(person_2)
say_dogs_name(dog)



 


# def met1(options)
#   puts options.keys # options is the hash you passed it, use it like one
# end