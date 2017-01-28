class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat
  end

  def buy_dog
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all.dup.freeze
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def walk_dogs

  end

  def play_with_cats

  end

  def feed_fish

  end

  def sell_fish
  end

  def list_pets
  end

end
