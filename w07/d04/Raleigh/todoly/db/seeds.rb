# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Todo.destroy_all 

Todo.create(task: "Do laundry")
Todo.create(task: "Buy groceries")
Todo.create(task: "Complete Homework")