### Lab/HW for Afternoon

Chopped

- 3 rounds, 4 chefs.
- Chef makes a dish as part of a round.
- Judges judge each dish and give it a rating on a score of 1 - 5.
- The chef with the lowest scoring dish is chopped, and cannot participate in the next round
 	- In the event of a tie, the chopped chef is picked randomly
- The last chef standing is the winner and wins $10,000


classes
===

###episodes

has many rounds
has many judges

###rounds  

has many chefs. (4) 
is round 1, 2, or 3.

###chefs

name:string

belongs to episode
has many dishes (3)
is chopped boolean

###dishes

name:string

(total score)

has many scores
has many judges through scores

###judges

name:string

there are three judges.

accepts a dish and returns a score between 1 and 5.

has many scores
has many dishes through scores

###scores

value:integer

is between 1 and 5.

belongs to a dish
belongs to a judge


possible idea for simplification:
combine judges and scores into the dishes
