require_relative '../config/environment.rb'

bob = Artist.new("Bob Ross", 1000)
john = Artist.new("John Lonetree the Great", 1)
stephanie = Artist.new("Stephanie the Stephiest", 20)

louve = Gallery.new("The Louve", "Paris, TX")
gam = Gallery.new("Gotham Art Museum", "Gotham, CA")

many_bushes = Painting.new("Many Secret Bushes", bob, 100, louve)
stick_figure = Painting.new("Stick Guy", john, 1, gam)
best_painting = Painting.new("Beauty Incarnate", stephanie, 350, gam)

binding.pry

puts "Bob Ross rules."
