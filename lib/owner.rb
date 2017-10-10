class Owner
  attr_reader :species
  attr_accessor :pets
  @@all = Array.new

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def say_species
    self.species
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.new
  end


end
