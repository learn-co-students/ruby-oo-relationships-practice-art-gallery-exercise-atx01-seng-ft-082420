class Painting
  attr_reader :title, :artist, :price, :gallery

  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @artist = artist
    @price = price
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum do |p|
      p.price
    end
  end 

end