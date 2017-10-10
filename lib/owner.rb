class Owner
  # code goes here
  @@all = Array.new

  def initialize(owner)
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.new
  end


end
