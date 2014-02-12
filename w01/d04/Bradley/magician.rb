person1 = {name: 'David Copperfield', hometown: 'Metuchen'}
person2 = {name: 'Syphilis Rivendell', hometown: 'Brooklyn'}
dog = {name: 'Sparky', hometown: 'Manhattan'}

def say_persons_name(p)
  puts p[:name]
  puts p[:hometown]
end

def say_dogs_name(d)
  puts 'Woof!'
  puts d[:name]
  puts 'Woof!'
end

def do_magic(p)
  "#{p[0]} is doing a magic trick!"
end

say_persons_name(person1)
say_persons_name(person2)
say_dogs_name(dog)
do_magic(person1)


