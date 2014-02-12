

alfred = Animal.new("Alfred", "llama")
alfred.add_toys(["spittoon", "hairbrush"])
$happitails.add_animal(alfred) 

bernie = Animal.new("Bernie", "dog")
bernie.add_toys(["bottle", "chew bone", "mihran's shoe"])
$happitails.add_animal(bernie) 

charles = Animal.new("Charles", "penguin")
charles.add_toys(["snowball"])
$happitails.add_animal(charles) 

derek = Animal.new("Derek", "crocodile")
derek.add_toys(["purse"])
$happitails.add_animal(derek) 

winston = Client.new("Winston", 19)
wally = Animal.new("Wally", "iguana")
wally.add_toys(["heat lamp"])
winston.add_pet(wally)
$happitails.add_client(winston) 

zachariah = Client.new("Zachariah", 79)
biscuit = Animal.new("Biscuit", "cat")
zachariah.add_pet(biscuit)
$happitails.add_client(zachariah)