## Optional Enrichment Work - Sinatra MTA App

Build a Sinatra App for the MTA

- Your ruby code will need to include a constant that points to a hash called MTA. The keys are train lines. The values are arrays of station name strings.
```ruby
MTA = {
  :l_train => ['bedford', '1st ave'],
  :g_train => ['greenpoint', 'nassau'],
  :n_train => ['canal', '8th'],
}
```

- `localhost:4567/plan` displays an unordered list (HTML `ul` and `li` elements) of all train lines
   - Each train line in this list is a link (`a` tag)
   - if you click on a train line link, you'll go to `localhost:4567/plan/[LINE]` and then see all of the stops on that line
   - **example:** when you click the L line, you'll be taken to /plan/l_train and see all of the L train's stops on that page
- **Style it with CSS!**

##Hints
* Use `<%= %>` to insert AND print Ruby code in your ERB files
* Use `<% %>` to only run the Ruby code in your ERB files, but not to print anything. (You might use this for an if statement, a block, or a loop, etc)
* If you get confused about how to iterate through your hash in your erb/view, Jeff is going to go over this tomorrow.