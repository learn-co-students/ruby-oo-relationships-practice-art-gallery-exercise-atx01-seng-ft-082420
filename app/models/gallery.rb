class Gallery
    attr_reader :name, :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |p|
      p.gallery.name == self.name
      # binding.pry
    end 
  end

  def artists
    paintings.select do |p|
      p.artist
      # binding.pry
    end
  end 

  def artist_names
    paintings.select do |p|
      p.artist.name
      # binding.pry
    end
  end

  def most_expensive_painting
    paintings.max do |p|
      p.price
      binding.pry
    end
  end

end