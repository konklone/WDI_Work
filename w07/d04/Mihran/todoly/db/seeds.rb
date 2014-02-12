# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.destroy_all

groceries = Task.create(task: "do groceries")
pumpkin_pie = Task.create(task: "bake a pumpkin pie")
wash_socks = Task.create(task: "wash socks")
