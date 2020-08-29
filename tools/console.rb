require_relative '../config/environment.rb'

devin = Artist.new('Devin', 5)
jeff = Artist.new('Jeff', 16)
max = Artist.new('Max', 30)

gallery_one = Gallery.new('Gallery One', 'Los Angeles')
gallery_two = Gallery.new('Gallery Two', 'Houston')
gallery_three = Gallery.new('Gallery Three', 'Austin')

mona_lisa = Painting.new('Mona Lisa', 876, jeff, gallery_one)
starry_night = Painting.new('Starry Night', 950, devin, gallery_two)
the_boy = Painting.new('The Boy', 732, max, gallery_three)
sunlight = Painting.new('Sunglight', 450, devin, gallery_three)

binding.pry

puts "Bob Ross rules."
