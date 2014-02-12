ACTIVE RECORD COMMANDS

hackford = Painting.new({:title => "87 Hackford Road", :year => "1873", :image_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Vincent_van_Gogh_-_87_Hackford_Road.jpg/800px-Vincent_van_Gogh_-_87_Hackford_Road.jpg", :artist_id => "3"})
hackford.save
wheat = Painting.new({:title => "Wheat Field Under Clouded Sky", :year => "1890", :image_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Vincent_Willem_van_Gogh_041.jpg/800px-Vincent_Willem_van_Gogh_041.jpg", :artist_id => "3"})
wheat.save

pablo = Artist.new({:name => "Pablo Picasso", :nationality => "Spanish", :dob => "1881-10-25"})
pablo.save

vie = Painting.new({:title => "La Vie", :year => "1903", :image_url => "http://upload.wikimedia.org/wikipedia/en/thumb/b/b1/Picasso_la_vie.jpg/383px-Picasso_la_vie.jpg", :artist_id => "4"})
vie.save

figure = Painting.new({:title => "Figure dans un Fauteuil (Seated Nude, Femme nue assise)", :year => "1909", :image_url => "http://upload.wikimedia.org/wikipedia/en/thumb/8/8f/Pablo_Picasso%2C_1909-10%2C_Figure_dans_un_Fauteuil_%28Seated_Nude%2C_Femme_nue_assise%29%2C_oil_on_canvas%2C_92.1_x_73_cm%2C_Tate_Modern%2C_London.jpg/460px-Pablo_Picasso%2C_1909-10%2C_Figure_dans_un_Fauteuil_%28Seated_Nude%2C_Femme_nue_assise%29%2C_oil_on_canvas%2C_92.1_x_73_cm%2C_Tate_Modern%2C_London.jpg", :artist_id => "4"})
figure.save

#3
Artist.all

#4
Painting.all

#5
Artist.find(2)

#6
Artist.find_by(:name => "Vincent Van Gogh")

#7 
Artist.find_by(:nationality => "Spanish")

#8
Painting.find(1)

#9
Painting.find_by(:name => "Guernica")

#10
Painting.find_by(:title => "Stary Night")[:image_url]

#11
van = Artist.find_by(:name => "Vincent Van Gogh")
van.paintings

#12
Painting.all.map(&:image_url)
Painting.pluck(:image_url)

#13
#Return the artist of "Guernica"

Artist.find(3).paintings
# Change Vincent Van Gogh's nationality to USA

# Change "Starry Night" to be one of Pablo Picasso's paintings


