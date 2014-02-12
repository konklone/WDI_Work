# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Costume.destroy_all
Costume.create(name: 'Tank', image: 'http://media.giphy.com/media/pum9EP2v4WTiU/giphy.gif')
Costume.create(name: 'Princess', image: 'http://media.giphy.com/media/13yZC4GMF1busE/giphy.gif')
Costume.create(name: 'Pac Man', image: 'http://media.giphy.com/media/DWqqMBCtlWQGA/giphy.gif')
Costume.create(name: 'Mouse', image: 'http://media.giphy.com/media/PDc8rPhx1WLi8/giphy.gif')
Costume.create(name: 'Panda', image: 'http://media1.giphy.com/media/XXIzFAQeME9IQ/giphy.gif')