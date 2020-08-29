require 'pry'
class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    result = @@all.map do |artist|
      artist.years_experience
    end
    result.inject(0, &:+)
  end

  def self.most_prolific
    @@all.max_by {|artist|artist.paintings.count.to_f / artist.years_experience}
    # result = []
    # result = @@all.map do |artist|
    #   artist.paintings.count.to_f / artist.years_experience.to_f
    # end
    # highest_ratio = result.max
    # if self.paintings.count.to_f / artist.years_experience.to_f == result.max
    #   self.artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
