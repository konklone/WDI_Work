### HappiTails Existing Data ###

require "./animal"
require "./client"
require "./shelter"

$happitails = Shelter.new("HappiTails")

no_client = Client.new("No Client", "N/A")
$happitails.add_client("No Client", [no_client])

bobby = Client.new("Bobby", "29")
$happitails.add_client("Bobby", [bobby])

katie = Client.new("Katie", "32")
$happitails.add_client("Katie", [katie])

lady = Animal.new("Lady", "dog")
$happitails.add_animal_to_shelter(lady)

tramp = Animal.new("Tramp", "dog")
$happitails.add_animal_to_shelter(tramp)

oliver = Animal.new("Oliver", "cat")
$happitails.add_animal_to_shelter(oliver)