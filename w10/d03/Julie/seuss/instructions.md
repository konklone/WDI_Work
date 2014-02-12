# Regexp and Ham

Using the built in method (`save_as filename, contents`) and string (`txt`) provided in `regexp.rb`, write regular expressions to perform the following requests...

1. Count all instances where Sam is not referred to as "Sam-I-Am."

r = /(sam)[^-]/i
text.scan(r)
=> [["Sam"], ["Sam"], ["Sam"], ["Sam"], ["Sam"], ["Sam"]]
text.scan(r).count
6

2. Change all instances of Sam-I-Am to "Sammy Jam."

r = /(sam-i-am)/i
=> /(sam-i-am)/i
[9] pry(main)> text.gsub(r, 'Sammy Jam')

3. List all the places and animals whom Sam refuses to eat with (the bigot).

array.flatten.uniq
=> [nil, "house", "mouse", "box", "fox", "car", "tree", "goat", "boat"]

4. Create a new file where the narrator constantly agrees to eat (ie, remove the nots).

r = /not /i
=> /not /i
[23] pry(main)> text.gsub(r, "")

save_as("file.txt", bettergreeneggs)

5. Create a new file where "Sam" is "PJ," and is referred to as "PJ-I-Say", and the narrator is being forced to eat "curds and whey."

6. List all of the sentences that are repeated twice in a row. This way you can prove to the narrator that he has a problem and should see a doctor before his dimensia gets worse.

---
