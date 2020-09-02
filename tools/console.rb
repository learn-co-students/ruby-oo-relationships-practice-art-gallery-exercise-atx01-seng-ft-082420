require_relative '../config/environment.rb'

g1 = Gallery.new("The Shack", "Austin")
g2 = Gallery.new("Gallery 1", "Houston")
g3 = Gallery.new("Grandma's House", "Austin")

a1 = Artist.new("Banksy", 20)
a2 = Artist.new("Little Jimmy", 1)
a3 = Artist.new("Nooni", 70)

p1 = Painting.new("The Scream", 10000, g1, a1)
p2 = Painting.new("A Color or Something?", 5, g3, a2)
p3 = Painting.new("2.54.54", 55000, g2, a3)


binding.pry

puts "Bob Ross rules."
