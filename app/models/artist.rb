class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    self.class.all.push(self)
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end 

  def galleries 
    self.paintings.collect {|painting| painting.gallery}
  end 

  def cities 
    self.paintings.collect { |painting| painting.gallery.city }
  end 

  def self.total_experience
    self.all.sum { |xp| xp.years_experience }
  end 

  def painting_average
    (self.paintings.count).to_f / (self.years_experience).to_f
  end 

  def self.most_prolific
    self.all.max{ |artist| artist.painting_average}
  end

  def create_painting(title, price, gallery) 
    Painting.new(title, price, gallery, self)
  end 

  def self.all 
    @@all 
  end 
end
