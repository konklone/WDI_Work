#Morning Exercise

###Part 1 - User objects & Creating test user objects

Step 1:
- Create a User class
  - User should have an id
  - User should have a name
  - User should have an street_address
  - User should have an email_address
  - User should have a `to_s` method

Step 2:
- Create a hash with 50 User objects with junk data.
  - key should be their id_number (auto-increment this)
  - value should be the User object

#####Hints
- Use:

```ruby

require 'faker'

name = Faker::Name.name
address = Faker::Address.street_address
email_address = Faker::Internet.email
```

###Part 2 - Creating a users database
- Write the needed SQL statments to create a table
  - Write this in a file called `schema.sql`
  - The table should be called `morning_users`
  - columns should include:
    - id
    - name
    - street_address
    - email_address
  - Be sure to require id and name
- Run your `schema.sql` file from your command line, adding the table to your `sandbox` database
- Test your database to make sure your can INSERT and SELECT

###Part 3 - Adding test data to our database
- Write a ruby program that will connect to our database and insert 50 randomly generated entries into our users table
- How can you make sure that they were added correctly?
