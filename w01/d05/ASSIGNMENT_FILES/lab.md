#HappiTails

###Objectives:
- Comprehensive Ruby Lab

###Prompt

- You are the manager at HappiTails animal shelter. You need to manage your shelter by storing and manipulating information about clients and animals.

- __Make git commits as you finish each phase, so you can see the history__
- __DO NOT USE ATTR_ACCESSOR, ATTR_READER, or ATTR_WRITER__

###Specification:

#####Object Specs:
- Animal:
  - An animal should have a name.
  - An animal should have a species.
  - An animal can have multiple toys, but doesn't start with any.
  - When we print an animal to a string, it should tell us about its name, species and all of its toys.

- Client:
  - A client should have a name.
  - A client should have an age.
  - A client can have multiple pets (animals), but it doesn't start with any.
  - When we print an client to a string, it should tell us about its name, age and the number of pets.


- Shelter:
  - A shelter should have a name
  - A shelter can have multiple animals, but it doesn't start with any.
  - A shelter can have multiple clients, but it doesn't start with any.
  - A shelter should be able to display all of its clients.
  - A shelter should be able to display all of its animals.
  - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
  - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
  - When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.


#####Phase 1
- Define the animal, client and shelter classes according to the specs. Each class should have the appropriate attributes and initialize method.
- Test these out with pry to make sure you can create the objects and that they do what you think the should do. Check the methods that you wrote too!

#####Phase 2
- Create a main.rb
- It should create a new shelter for you
- It should display a menu of options for the user to choose from:
  - Create an animal
  - Create a client
  - Create a shelter
  - Quit
- When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.

#####Phase 3
- Add options to the menu so that a user can:
    - Display all animals
    - Display all clients

#####Phase 4
- Add options to the menu so that a user can:
    - Facilitate client adopts an animal. This means the client now has the animal and they should no longer be a part of the shelter.
    - Facilitate client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.

#####Phase 5
- Create a seeds.rb file that initializes a shelter as well as a few animals and clients so you have some data to start with when you run your program.

#####Phase 6 (Bonus)
- Limit the number of animals a client can adopt to 2 per client. If they try to adopt more than that, yell at them.

- Refactor your code to make sure it is DRY (Don't Repeat Yourself) and all your methods are in the appropriate classes.

TO DO:
#####Phase 7 (Bonus)
- Add a new class that inherits from your client/person class called CatLady. A cat lady only takes cats, and take as many cats as there is space in a computer's memory.
