class Painting
  attr_reader :title, :price, :artist, :gallery
  @@all = []
  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    result = self.all.map do |painting|
      painting.price
    end
    result.inject(0, &:+)
  end

end
