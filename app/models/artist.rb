class Artist
  attr_accessor :years
  attr_reader :name

  @@all = []

  def initialize(name, years)
    @name = name
    @years = years

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |p| 
      p.artist == self
      # binding.pry
    end 
  end

  # Returning array of galleries == artist
  # painting == artist
  def galleries
    paintings.select do |p|
      p.gallery
    end
  end

  def cities
    gallery.select do |g|
      g.gallery.location
    end
  end

  def self.total_experience
    self.all.sum do |a|
      a.years
    end
  end

  def self.most_prolific
    self.all.max_by do |a|
      a.years
    end
      # binding.pry
    # end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end

end