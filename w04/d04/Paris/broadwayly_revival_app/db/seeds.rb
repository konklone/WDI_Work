# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create( song_title: "Suddenly Seymour", embed_url: "http://www.youtube.com/watch?v=6RRh-g-CC8g", show_id: 1 )
Song.create( song_title: "Suppertime", embed_url: "http://www.youtube.com/watch?v=b66p8dLLwf8", show_id: 1 )
Song.create( song_title: "Dentist!", embed_url: "http://www.youtube.com/watch?v=bOtMizMQ6oM", show_id: 1 )
Song.create( song_title: "What I Did for Love", embed_url: "http://www.youtube.com/watch?v=-h7ehLC6aAk", show_id: 2 )
Song.create( song_title: "Dance: Ten; Looks: Three", embed_url: "http://www.youtube.com/watch?v=Q-yjj6_LBCs", show_id: 2 )
Song.create( song_title: "One", embed_url: "http://www.youtube.com/watch?v=tyZeGOsR9IA", show_id: 2 )
Song.create( song_title: "Cabaret", embed_url: "http://www.youtube.com/watch?v=moOamKxW844", show_id: 3 )
Song.create( song_title: "Tomorrow Belongs to Me", embed_url: "http://www.youtube.com/watch?v=29Mg6Gfh9Co", show_id: 3 )
Song.create( song_title: "The Money Song", embed_url: "http://www.youtube.com/watch?v=I8P80A8vy9I", show_id: 3 )

Show.create( title: "Little Shop of Horrors", year: "1982", composer: "Alan Menken", img_url: "http://static.guim.co.uk/sys-images/Arts/Arts_/Pictures/2011/11/25/1322221103019/Audrey-II-in-Little-Shop--007.jpg"  )
Show.create( title: "A Chorus Line", year: "1975", composer: "Marvin Hamlisch", img_url: "http://makemusicals.com/wp-content/uploads/2011/02/ChorusLine.jpg"  )
Show.create( title: "Cabaret", year: "1966", composer: "John Kander", img_url: "http://1.bp.blogspot.com/-rAwnw1SUmnU/TnrSMNNC8lI/AAAAAAAAAKc/IiogZLn7rUE/s640/cabaret+image.jpg"  )
Show.create( title: "Rent", year: "1994", composer: "Jonathan Larson", img_url: "http://upload.wikimedia.org/wikipedia/en/e/ea/Rentpostera.jpg"  )