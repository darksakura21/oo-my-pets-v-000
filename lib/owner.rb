class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = Array.new

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    Owner.new("human")
  end

  def walk_dogs
    self.pets[:dogs].select{ |dog| dog.mood = "happy"};
  end


end
