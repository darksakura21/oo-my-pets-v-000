class Owner
  # code goes here
  @@all = Array.new

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    Owner.new
  end


end
