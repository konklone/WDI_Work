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
email_address = Faker::Internet.email_address
```