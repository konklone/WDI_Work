# Regexp and Ham

Using the built in method (`save_as filename, contents`) and string (`txt`) provided in `regexp.rb`, write regular expressions to perform the following requests...

1. Count all instances where Sam is not referred to as "Sam-I-Am."

(Sam)[^-]

2. Change all instances of Sam-I-Am to "Sammy Jam."

("Sam-I-am").gsub("Sammy Jam") in rubular
text.gsub(/sam-I-am/, "sammy jam")

3. List all the places and animals whom Sam refuses to eat with (the bigot).
in a \w+[?]
or
(in a| with a) \w+

4. Create a new file where the narrator constantly agrees to eat (ie, remove the nots).

5. Create a new file where "Sam" is "PJ," and is referred to as "PJ-I-Say", and the narrator is being forced to eat "curds and whey."

6. List all of the sentences that are repeated twice in a row. This way you can prove to the narrator that he has a problem and should see a doctor before his dimensia gets worse.

---
