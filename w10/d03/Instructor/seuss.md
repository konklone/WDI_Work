Count all instances where Sam is not referred to as "Sam-I-Am."

```ruby
text.scan(/Sam[^-]/).size
```

Change all instances of Sam-I-Am to "Sammy Jam."

```ruby
text.gsub(/Sam-I-am/,"Sammy Jam")
```

List all the places and animals whom Sam refuses to eat with (the bigot).

```ruby
text.scan(/with a \w+|in a \w+/).map {|phrase| phrase.split(" ")[2]}.uniq
```
 
Create a new file where the narrator constantly agrees to eat (ie, remove the nots).

```ruby
save_as "new_file.txt", text.gsub(/not/, '').gsub(/Not (.)/, '\1'.capitalize).gsub(/ {2,}/, ' ').gsub(/ ,/, ',')
```

Create a new file where "Sam" is "PJ," and is referred to as "PJ-I-Say", and the narrator is being forced to eat "curds and whey."


```ruby
save_as "newer_file.txt", text.gsub(/Sam-I-am|Sam|green eggs and ham/, 'Sam-I-am' => 'PJ-I-Say', 'Sam' => 'PJ', 'green eggs and ham' => 'curds and whey')
```

List all of the sentences that are repeated twice in a row. This way you can prove to the narrator that he has a problem and should see a doctor before his dimensia gets worse.

```ruby
phrases = text.scan(/^.+$/)
repeats = []
phrases.each_with_index {|phrase, index| if phrase == phrases[index - 1]; repeats << phrase; end }
```
