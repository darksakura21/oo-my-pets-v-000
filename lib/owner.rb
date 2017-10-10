class Owner
  attr_reader :species
  @@all = Array.new

  def initialize(species)
    @species = species
    @@all << self
  end

  def say_species
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.new
  end


end
